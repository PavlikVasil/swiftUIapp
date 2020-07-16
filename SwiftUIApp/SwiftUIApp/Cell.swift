//
//  Cell.swift
//  SwiftUIApp
//
//  Created by Павел on 7/5/20.
//  Copyright © 2020 Павел. All rights reserved.
//

import SwiftUI



struct Cell: View {
    var user: UserResponse
    
    var body: some View {
        
        VStack(spacing: 10.0){
            TopView(user: user)
            Text(user.text).lineLimit(nil)
        }.padding()
        
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(user: userResponse[0])
    }
}
