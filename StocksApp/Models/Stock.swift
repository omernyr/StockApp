//
//  Stock.swift
//  StocksApp
//
//  Created by macbook pro on 23.06.2023.
//

import Foundation

struct Stock: Codable {
    
    let symbol: String
    let description: String
    let price: Double
    let change: String
    
}
