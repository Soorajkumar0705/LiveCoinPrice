//
//  CryptoListViewModel.swift
//  LiveCoinPrice
//
//  Created by sooraj kahar on 09/12/25.
//

import SwiftUI

class CryptoListViewModel : ObservableObject{
    
    @Published var coins : [Coin] = MockData.mockCoins
    
}
