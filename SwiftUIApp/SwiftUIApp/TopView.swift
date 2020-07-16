//
//  TopView.swift
//  SwiftUIApp
//
//  Created by Павел on 7/5/20.
//  Copyright © 2020 Павел. All rights reserved.
//

import SwiftUI

struct TopView: View {
    var user: UserResponse
    
    var body: some View {
        HStack {
            Image(user.profileImage).resizable().frame(width: 60, height: 60).clipShape(Circle())
            VStack(alignment: .leading, spacing: 3.0) {
                Text(user.name).font(.title)
                HStack {
                    Text(user.email).font(.subheadline)
                    Spacer()
                    Image("like").resizable().frame(width: 30, height: 30)
                    Text(user.likes).font(.subheadline)
                }
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(user: userResponse[1])
    }
}
