//
//  Coin.swift
//  LiveCoinPrice
//
//  Created by sooraj kahar on 09/12/25.
//

import Foundation

struct Coin: Codable, Identifiable {
    
    let id: String
    let symbol: String
    let name: String
    let image: String
    let currentPrice: Double
    let marketCap: Double
    let marketCapRank: Int
    let priceChangePercentage24H: Double
    let high24H: Double
    let low24H: Double
    let roi : Roi? = nil
    
    enum CodingKeys: String, CodingKey {
        
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case high24H = "high_24h"
        case low24H = "low_24h"
        
        case roi
    }
}

struct Roi: Codable {
    let times: Double
    let currency: String
    let percentage: Double
}
