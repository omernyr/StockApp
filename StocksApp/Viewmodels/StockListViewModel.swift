//
//  StockListViewModel.swift
//  StocksApp
//
//  Created by macbook pro on 23.06.2023.
//

import Foundation


class StockListViewModel: ObservableObject {

    var searchTerm: String = ""
    @Published var stocks: [StockViewModel] = [StockViewModel]()
    
    func load() {
        fetchStocks()
    }
    
    private func fetchStocks() {
        
        Webservice().getStocks { stocks in
            if let stocks = stocks {
                DispatchQueue.main.async {
                    self.stocks = stocks.map(StockViewModel.init)
                }
            }
        }
        
    }
}

