//
//  ExpensesView.swift
//  Sides
//
//  Created by Diego Herrera Redondo on 28/10/22.
//

import SwiftUI

struct Transactions: View {
    @State var steady: String = ""
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    HStack {
                        VStack {
                            Text("Recents").font(.footnote).fontWeight(.bold).frame(maxWidth: .infinity,alignment:.leading).foregroundColor(.gray)
                            Text("Movements").font(.title3).fontWeight(.bold).frame(maxWidth: .infinity,alignment:.leading)
                        }.frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Divider()
                }.frame(maxWidth: .infinity, alignment: .leading).padding([.top,.leading,.trailing])
                ScrollView {
                    Grid {
                        GridRow {
                            HStack {
                                Image(systemName: "gamecontroller").resizable().frame(width: 30,height: 20)
                            }.frame(maxWidth:50).padding(.leading)
                            HStack {
                                Text("Entertainment")
                            }
                            HStack {
                                Text("\(-20)$").fontWeight(.bold).foregroundColor(.red).padding(5).background(Color.red.opacity(0.2)).cornerRadius(5)
                            }.frame(maxWidth: .infinity, alignment: .trailing).padding()
                        }.padding(2).frame(maxWidth: .infinity,alignment: .leading).frame(height:30)
                        Divider()
                        GridRow {
                            HStack {
                                Image(systemName: "goforward.plus").resizable()
                                    .aspectRatio(contentMode: .fit)
                            }.frame(maxWidth:50).padding([.leading])
                            HStack {
                                Text("Frequent Income")
                            }
                            HStack {
                                Text("+\(59)$").fontWeight(.bold).foregroundColor(.green).padding(5).background(Color.green.opacity(0.2)).cornerRadius(5)
                            }.frame(maxWidth: .infinity, alignment: .trailing).padding()
                        }.padding(2).frame(maxWidth: .infinity,alignment: .leading).frame(height:30)
                        Divider()
                        GridRow {
                            HStack {
                                Image(systemName: "person.badge.plus").resizable().aspectRatio(contentMode: .fit)
                            }.frame(maxWidth:50).padding([.leading])
                            HStack {
                                Text("Transfer from Rosemary")
                            }
                            HStack {
                                Text("+\(30)$").fontWeight(.bold).foregroundColor(.green).padding(5).background(Color.green.opacity(0.2)).cornerRadius(5)
                            }.frame(maxWidth: .infinity, alignment: .trailing).padding()
                        }.padding(2).frame(maxWidth: .infinity,alignment: .leading).frame(height:30)
                        Divider()
                        GridRow {
                            HStack {
                                Image(systemName: "desktopcomputer").resizable().aspectRatio(contentMode: .fit)
                            }.frame(maxWidth:50).padding([.leading])
                            HStack {
                                Text("Computer Fix")
                            }
                            HStack {
                                Text("\(-199)$").fontWeight(.bold).foregroundColor(.red).padding(5).background(Color.red.opacity(0.2)).cornerRadius(5)
                            }.frame(maxWidth: .infinity, alignment: .trailing).padding()
                        }.padding(2).frame(maxWidth: .infinity,alignment: .leading).frame(height:30).padding(.bottom)
                    }.frame(maxWidth: .infinity,maxHeight:.infinity,alignment: .topLeading)
                }
            }.frame(width:350, height: 208).background(Color(UIColor.systemBackground)).cornerRadius(15).shadow(color: .gray.opacity(0.5), radius: 40,y:-10).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top).padding(.top)
            VStack {
                TextField("$steady", text: $steady)
            }.frame(width:350, height: 400).background(Color(UIColor.systemBackground)).cornerRadius(15).shadow(color: .gray.opacity(0.5), radius: 40,y:+5).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top).padding()
        }
    }
}

struct Transactions_Previews: PreviewProvider {
    static var previews: some View {
        Transactions()
    }
}
