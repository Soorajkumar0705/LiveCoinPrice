//
//  CryptoListView.swift
//  LiveCoinPrice
//
//  Created by sooraj kahar on 09/12/25.
//

import SwiftUI
import Combine

struct CryptoListView {
    
    @StateObject var viewModel : CryptoListViewModel
    
    init() {
        let apiService = APIServiceFactory.make(
            decoder: JSONDecoder()
        )
        _viewModel = StateObject(wrappedValue: CryptoListViewModel(apiService: apiService)
        )
        
    }
    
    
}

extension CryptoListView : View{
    
    var body: some View {
        NavigationStack {
            VStack {
               
                List(viewModel.coins, rowContent: { coin in
                    CryptoListViewItem(coin: coin)
                })
                
            }
        }
        .task({
            viewModel.loadCoinData()
        })
    }
}

#Preview {
    CryptoListView()
}
