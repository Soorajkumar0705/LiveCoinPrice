//
//  URLConstant.swift
//  LiveCoinPrice
//
//  Created by sooraj kahar on 10/12/25.
//

import Foundation

struct URLConstant {
    
    static let baseURLString = "https://api.coingecko.com/api/v3/coins/markets"
    
    static func getCoinURL(
        perPage: Int,
        page: Int
    ) -> String {
        return baseURLString + "?vs_currency=usd&order=market_cap_desc&per_page=\(perPage)&page=\(page)&price_change _percentage=24h"
    }
}
