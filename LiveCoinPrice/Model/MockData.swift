//
//  MockData.swift
//  LiveCoinPrice
//
//  Created by sooraj kahar on 09/12/25.
//

import Foundation

class MockData {
    
    static let mockCoins: [Coin] = [
        Coin(
            id: "bitcoin",
            symbol: "btc",
            name: "Bitcoin",
            image: "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png",
            currentPrice: 90858,
            marketCap: 1814741548215,
            marketCapRank: 1,
            priceChangePercentage24H: 0.55,
            high24H: 91353,
            low24H: 89736
        ),
        Coin(
            id: "ethereum",
            symbol: "eth",
            name: "Ethereum",
            image: "https://coin-images.coingecko.com/coins/images/279/large/ethereum.png",
            currentPrice: 3137.63,
            marketCap: 378942822494,
            marketCapRank: 2,
            priceChangePercentage24H: 0.72,
            high24H: 3147.83,
            low24H: 3093.48
        ),
        Coin(
            id: "tether",
            symbol: "usdt",
            name: "Tether",
            image: "https://coin-images.coingecko.com/coins/images/325/large/Tether.png",
            currentPrice: 1.00,
            marketCap: 112000000000,
            marketCapRank: 3,
            priceChangePercentage24H: 0.02,
            high24H: 1.01,
            low24H: 0.99
        ),
        Coin(
            id: "binancecoin",
            symbol: "bnb",
            name: "BNB",
            image: "https://coin-images.coingecko.com/coins/images/825/large/binance-coin-logo.png",
            currentPrice: 589.42,
            marketCap: 86500000000,
            marketCapRank: 4,
            priceChangePercentage24H: -0.20,
            high24H: 595.00,
            low24H: 580.32
        ),
        Coin(
            id: "solana",
            symbol: "sol",
            name: "Solana",
            image: "https://coin-images.coingecko.com/coins/images/4128/large/solana.png",
            currentPrice: 175.63,
            marketCap: 82000000000,
            marketCapRank: 5,
            priceChangePercentage24H: 1.93,
            high24H: 178.43,
            low24H: 170.11
        ),
        Coin(
            id: "ripple",
            symbol: "xrp",
            name: "XRP",
            image: "https://coin-images.coingecko.com/coins/images/44/large/xrp.png",
            currentPrice: 0.62,
            marketCap: 34000000000,
            marketCapRank: 6,
            priceChangePercentage24H: -0.45,
            high24H: 0.65,
            low24H: 0.60
        ),
        Coin(
            id: "cardano",
            symbol: "ada",
            name: "Cardano",
            image: "https://coin-images.coingecko.com/coins/images/975/large/cardano.png",
            currentPrice: 1.21,
            marketCap: 30000000000,
            marketCapRank: 7,
            priceChangePercentage24H: 0.86,
            high24H: 1.24,
            low24H: 1.17
        ),
        Coin(
            id: "dogecoin",
            symbol: "doge",
            name: "Dogecoin",
            image: "https://coin-images.coingecko.com/coins/images/5/large/dogecoin.png",
            currentPrice: 0.18,
            marketCap: 25000000000,
            marketCapRank: 8,
            priceChangePercentage24H: -1.12,
            high24H: 0.19,
            low24H: 0.17
        ),
        Coin(
            id: "tron",
            symbol: "trx",
            name: "TRON",
            image: "https://coin-images.coingecko.com/coins/images/1094/large/tron.png",
            currentPrice: 0.14,
            marketCap: 13000000000,
            marketCapRank: 9,
            priceChangePercentage24H: 0.33,
            high24H: 0.15,
            low24H: 0.13
        ),
        Coin(
            id: "chainlink",
            symbol: "link",
            name: "Chainlink",
            image: "https://coin-images.coingecko.com/coins/images/877/large/chainlink-new-logo.png",
            currentPrice: 21.77,
            marketCap: 12000000000,
            marketCapRank: 10,
            priceChangePercentage24H: 1.11,
            high24H: 22.30,
            low24H: 20.90
        )
    ]
    
}
