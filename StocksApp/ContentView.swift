//
//  ContentView.swift
//  StocksApp
//
//  Created by macbook pro on 23.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchTerm: String = ""
    
    init() {
        UINavigationBar.appearance().backgroundColor = .black
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UITableView.appearance().backgroundColor = .black
        UITableViewCell.appearance().backgroundColor = .black
    }
    
    var body: some View {
        NavigationView {
            
            ZStack(alignment: .leading) {
                
                Color.black
                
                Text("June 5 2023")
                    .font(.custom("Arial", size: 32))
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                    .offset(y: -320)
                
                SearchView(searchTerm: $searchTerm)
                    .offset(y: -260)
            }
            
            .navigationTitle("Stocks")
        }.edgesIgnoringSafeArea(Edge.Set(.bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
