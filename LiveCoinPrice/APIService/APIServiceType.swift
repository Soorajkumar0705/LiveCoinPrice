//
//  APIServiceType.swift
//  LiveCoinPrice
//
//  Created by sooraj kahar on 10/12/25.
//

import Foundation
import Combine

protocol APIServiceType {
    
    var decoder : JSONDecoder { get }
    
    func loadData<T : Decodable>(
        urlString : String,
        responseType : T.Type
        
    ) -> Future<T, Error>
}

class APIServiceFactory {
    
    static func make(
        decoder: JSONDecoder = JSONDecoder()
        
    ) -> APIService {
        APIService(
            decoder: decoder
        )
    }
}

