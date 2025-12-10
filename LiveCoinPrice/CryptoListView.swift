//
//  CryptoListView.swift
//  LiveCoinPrice
//
//  Created by sooraj kahar on 09/12/25.
//

import SwiftUI

struct CryptoListView: View {
    
    @StateObject var viewModel = CryptoListViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
               
                List(viewModel.coins, rowContent: { coin in
                    CryptoListViewItem(coin: coin)
                })
                    
            }
        }
        
    }
}

#Preview {
    CryptoListView()
}
