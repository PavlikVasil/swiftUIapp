//
//  ProductRow.swift
//  SwiftUIApp
//
//  Created by Павел on 7/5/20.
//  Copyright © 2020 Павел. All rights reserved.
//

import SwiftUI

struct ProductRow: View {
    
    var categoryName: String
    var items: [ProductsResponse]
    
var body: some View {
    VStack(alignment: .leading, spacing: 10.0){
        Text(self.categoryName).font(.headline)
            .padding(.leading, 15)
            .padding(.top, 5)
        ScrollView(.horizontal){
            HStack(alignment: .center, spacing: 0.0){
                ForEach(self.items, id: \.name){item in
                    NavigationLink(destination: DetailScreen(object: item)){
                       
                        ProductItem(object: item)
                        
                    }.buttonStyle(PlainButtonStyle())
                    
                }
            }
        }
    }.frame(height:190)
    
}
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(categoryName: "Webinars", items: Array(materialResponse.dropFirst(4)))
    }
}
