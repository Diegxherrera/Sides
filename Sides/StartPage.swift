//
//  StartPage.swift
//  Sides
//
//  Created by Diego Herrera Redondo on 21/11/22.
//

import SwiftUI

struct StartPage: View {
    var body: some View {
        VStack {
            HStack {
                Text("Welcome to").frame(width: 145, height: 145)
            }.frame(alignment: .top).padding()
            HStack {
                Image(systemName: "banknote").resizable().scaledToFit().frame(width: 60).foregroundColor(Color("IconPurple"))
                Text("")
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding(.top, 50).padding(.leading, 10)
        }.frame(maxHeight: .infinity, alignment: .top).padding(50)
    }
}

struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
