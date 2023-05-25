//
//  MainView.swift
//  Sides
//
//  Created by Diego Herrera Redondo on 26/10/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            TodayView()
                .tabItem {
                    Image(systemName: "doc.text.image")
                    Text("Stories")
            }
            Transactions()
                .tabItem {
                    Image(systemName: "chart.pie")
                    Text("Transactions")
            }
            Text("Hola")
                .tabItem {
                    Image(systemName: "dollarsign.arrow.circlepath")
                    Text("Savings")
            }
            Text("Hola2")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Insights")
            }
        }.accentColor(Color("IconBlue"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
