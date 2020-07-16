//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Павел on 7/5/20.
//  Copyright © 2020 Павел. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var categories: [String: [ProductsResponse]]{
        .init(grouping: materialResponse, by: {$0.category.rawValue})
    }
    
    var body: some View {
        
        NavigationView{
            List {
                Cell(user: swiftcourse).listRowInsets(EdgeInsets())
                ForEach(self.categories.keys.sorted(), id: \.self){ key in
                    ProductRow(categoryName: key, items: self.categories[key]! )
                    
                }.listRowInsets(EdgeInsets())
                
                NavigationLink(destination:TeachersList()){
                    Text("Teachers")
                }
            }
        .navigationBarTitle(Text("Hello"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
