//
//  TeachersList.swift
//  SwiftUIApp
//
//  Created by Павел on 7/6/20.
//  Copyright © 2020 Павел. All rights reserved.
//

import SwiftUI

struct TeachersList: View {
    var body: some View {
        NavigationView{
            List(userResponse){ user in
                Cell(user: user)
            }
            }.navigationBarTitle(Text("Teachers"))
    }
}

struct TeachersList_Previews: PreviewProvider {
    static var previews: some View {
        TeachersList()
    }
}
