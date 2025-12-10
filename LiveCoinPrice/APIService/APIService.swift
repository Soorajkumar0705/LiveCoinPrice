//
//  APIService.swift
//  LiveCoinPrice
//
//  Created by sooraj kahar on 10/12/25.
//

import Foundation
import Combine

class APIService {
    
    let decoder : JSONDecoder
    private var disposeBag : Set<AnyCancellable>
    
    init(
        decoder: JSONDecoder
    ) {
        self.decoder = decoder
        self.disposeBag = []
    }
    
    func loadData<T : Decodable>(
        urlString : String,
        responseType : T.Type
        
    ) -> Future<T, Error> {
        
        Future<T, Error> { [weak self] promise in
            guard let self else {
                promise(.failure(APIError.earlyDeallocation))
                return
            }
            guard let url = URL(string: urlString) else {
                promise(.failure(APIError.invalidURL))
                return
            }
            
            URLSession.shared.dataTaskPublisher(for: url)
                .tryMap { (data, response) -> Data in
                    guard let httpResponse = response as? HTTPURLResponse,
                          200...300 ~= httpResponse.statusCode
                    else {
                        print("Error in network call. :\(response)")
                        promise(.failure(APIError.networkError))
                        throw APIError.networkError
                    }
                    
                    return data
                }
                .decode(type: responseType, decoder: decoder)
                .receive(on: DispatchQueue.global(qos: .background))
                .sink(receiveCompletion: { completion in
                    
                    switch completion {
                    case .finished:
                        print("API call finished.")
                        
                    case .failure(let failure):
                        promise(.failure(failure))
                    }
                    
                }, receiveValue: { value in
                    promise(.success(value))
                    
                })
                .store(in: &disposeBag)
        }
        
    }
    
}

enum APIError : Error {
    
    case earlyDeallocation
    case invalidURL
    case decodingFailed
    case networkError
    
}
