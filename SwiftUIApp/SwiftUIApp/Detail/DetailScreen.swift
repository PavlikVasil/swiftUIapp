//
//  DetailScreen.swift
//  SwiftUIApp
//
//  Created by Павел on 7/6/20.
//  Copyright © 2020 Павел. All rights reserved.
//

import SwiftUI

struct DetailScreen: View {
    var object: ProductsResponse
    
    var body: some View{
        VStack{
        VStack(spacing: 20.0){
            MainImage(object: object)
            Text(object.name)
            .lineLimit(nil)
                .font(.title)
            
        }
        LittleStack(object: object)
        
            VStack(alignment: .leading, spacing: 10.0){
                Text("Описание")
                    .font(.title)
                Text(object.description)
                .lineLimit(nil)
            }
        Spacer()
        }.padding()
    }
}


struct LittleStack: View{
    var object: ProductsResponse
    
    var body: some View {
        HStack(spacing: 30.0){
            VStack{
                Text("\(object.lessons)")
                    .font(.title)
                Text("Lessons")
                    .font(.body)
                    .fontWeight(.medium)
            }
            VStack{
                       Text("\(object.students)")
                           .font(.title)
                       Text("Students")
                           .font(.body)
                           .fontWeight(.medium)
                   }
        }
    }
    
}

struct MainImage: View{
    var object: ProductsResponse
       
       var body: some View {
           Image(object.image)
           .resizable()
           .cornerRadius(30)
           .frame(width: 150, height: 150)
           .border(Color.gray, width: 3)
           .shadow(radius: 10)
           
       }
    
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(object: materialResponse[1])
    }
}
