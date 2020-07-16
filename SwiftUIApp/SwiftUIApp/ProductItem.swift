//
//  ProductItem.swift
//  SwiftUIApp
//
//  Created by Павел on 7/6/20.
//  Copyright © 2020 Павел. All rights reserved.
//

import SwiftUI

struct ProductItem: View {
    var object: ProductsResponse
    
    var body: some View {
        VStack{
            Image(object.image).resizable()
                       .cornerRadius(10)
                       .frame(width:150, height: 150)
               }.padding(.leading, 15)
    }
       
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(object: materialResponse[1])
    }
}
