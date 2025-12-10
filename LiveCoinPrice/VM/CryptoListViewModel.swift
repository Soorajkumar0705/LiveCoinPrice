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
    
    init(
        apiService: APIService
    ) {
        self.apiService = apiService
        self.disposeBag = []
    }
    
    func loadCoinData() {
        let future = apiService.loadData(
            urlString: URLConstant.getCoinURL(perPage: 10, page: 1),
            responseType: [Coin].self)
        
        future.sink(
            receiveCompletion: { completion in
                print("API call completed : \(completion)")
            },
            receiveValue: { value in
                print("coins : \(value)")
                self.coins = value
            }
        )
        .store(in: &disposeBag)
        
    }
    
}
