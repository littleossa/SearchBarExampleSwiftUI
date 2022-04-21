//
//  ContentView.swift
//  SearchBarExampleSwiftUI
//
//  Created by 平岡修 on 2022/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        
        // Compare searchable with Hand-made SearchBar
        NavigationView {
            VStack(spacing: 15) {
                Text("SwiftUI Searchable↑")
                    .searchable(text: $searchText)
                
                SearchBar(text: $searchText)
                
                Text("Hand-made SearchBar↑")
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
