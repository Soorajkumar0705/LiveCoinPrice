//
//  CryptoListViewItem.swift
//  LiveCoinPrice
//
//  Created by sooraj kahar on 09/12/25.
//

import SwiftUI

struct CryptoListViewItem : View {
    
    let coin : Coin
    
    var body: some View {
        HStack() {
            
            AsyncImage(url: URL(string: coin.image) ){ result in
                result.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            .padding(.trailing, 10)
            VStack(alignment: .leading) {
                Text(coin.name)
                    .font(.headline)
                
                Text(coin.symbol.uppercased())
                    .font(.subheadline)
                    .foregroundStyle(Color.gray)
            }

            Spacer()
            
            VStack(alignment: .trailing) {
                Text("$\(coin.currentPrice, specifier: "%.2f")")
                    .font(.headline)
                
                Text("\(coin.priceChangePercentage24H, specifier: "%.2f")%")
                    .font(.subheadline)
                    .foregroundStyle(
                        coin.priceChangePercentage24H > 0 ? Color.green : Color.red
                    )
            }
            .padding(.trailing, 5)
        }
        .padding(.vertical, 8)
    }
}
