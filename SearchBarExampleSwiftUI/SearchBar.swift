//
//  SearchBar.swift
//  SearchBarExampleSwiftUI
//
//  Created by 平岡修 on 2022/04/21.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    
    var body: some View {
        VStack {
            
            ZStack {
                // background
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.searchGray)
                    .frame(height: 36)
                
                HStack(spacing: 6) {
                    Spacer()
                        .frame(width: 0)
                    
                    // 􀊫
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    // TextField
                    TextField("", text: $text)
                        .placeholder(when: text.isEmpty, color: .gray) {
                            Text("Search")
                        }
                    
                    // 􀁑
                    if !text.isEmpty {
                        Button {
                            text.removeAll()
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing, 6)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
