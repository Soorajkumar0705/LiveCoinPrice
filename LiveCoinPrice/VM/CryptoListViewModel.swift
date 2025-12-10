//
//  CryptoListViewModel.swift
//  LiveCoinPrice
//
//  Created by sooraj kahar on 09/12/25.
//

import SwiftUI
import Combine

class CryptoListViewModel : ObservableObject{
    
    @Published var coins : [Coin] = []
//    MockData.mockCoins
    
    let apiService : APIService
    var disposeBag : Set<AnyCancellable>
    
    var perPage : Int = 10
    @Published var currentPage : Int = 1
    
    init(
        apiService: APIService
    ) {
        self.apiService = apiService
        self.disposeBag = []
    }
    
    func loadCoinData() {
        let future = apiService.loadData(
            urlString: URLConstant.getCoinURL(
                perPage: perPage,
                page: currentPage
            ),
            responseType: [Coin].self)
        
        future
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                print("API call completed : \(completion)")
                
            }, receiveValue: { value in
                print("coins : \(value)")
                self.coins.append(contentsOf: value)
            }
        )
        .store(in: &disposeBag)
        
    }
    
}
