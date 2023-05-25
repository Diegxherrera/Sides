//
//  InsightsView.swift
//  Sides
//
//  Created by Diego Herrera Redondo on 22/12/22.
//

import SwiftUI

struct InsightsView: View {
    @State public var age = ""
    @State public var ages = [0...100]
    @State public var gender: String = ""
    @State public var genders: [String] = ["Man","M","Woman","W","Non-binary","Other"]
    var body: some View {
        Form {
            TextField("Gender", text: $gender)
            TextField("Age", text: $age)
        }.onSubmit{
            
        }
    }
}

struct InsightsView_Previews: PreviewProvider {
    static var previews: some View {
        InsightsView()
    }
}
