//
//  TodayView.swift
//  Sides
//
//  Created by Diego Herrera Redondo on 29/10/22.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct TodayView: View {
    @Namespace var namespace
    @State var show1 = false
    var body: some View {
        ZStack {
            ScrollView {
                if !show1 {
                    ZStack {
                        Color("IconBlue")
                        Image("Sample").resizable().frame(height: 350).frame(alignment: .top).mask(LinearGradient(gradient: Gradient(stops: [
                            .init(color: .black, location: 0),
                            .init(color: .clear, location: 1),
                            .init(color: .black, location: 1),
                            .init(color: .clear, location: 1)
                        ]), startPoint: .top, endPoint: .bottom)).frame(maxHeight: .infinity,alignment: .top)
                        VStack {
                            VStack {
                                Text("FEATURED").lineLimit(1).padding(.leading, 15).padding(.trailing, 15).padding(.top, 5).padding(.bottom, 5).font(.custom("Scheme",size: 15)).foregroundColor(.white.opacity(2))
                            }.background(Color("IconBlue")).cornerRadius(15,corners: [.bottomRight]).frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading).padding(2)
                            VStack {
                                Text("15 MINUTES").font(.callout).fontWeight(.bold).frame(maxWidth: .infinity,alignment:.leading).foregroundColor(.white.opacity(0.7))
                                Text("Tricks to save more").font(.title2)
                                    .foregroundColor(.white).fontWeight(.heavy).shadow(color:.black, radius: 20).frame(maxWidth: .infinity,alignment:.leading)
                                Text("Award-winning saleswoman from Italy.").font(.body).foregroundColor(.white).fontWeight(.light).frame(maxWidth: .infinity,alignment:.leading)
                            }.padding()
                        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                    }.frame(width:350, height: 400).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 15).stroke(Color("IconBlue"), lineWidth: 6)).shadow(color: .gray.opacity(0.5), radius: 40,y:+5).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top).padding(.top)
                } else {
                    Text("").fullScreenCover(isPresented: $show1, onDismiss: {
                        withAnimation{
                            show1 = false
                        }
                    }, content: {
                        ZStack {
                            Color("IconBlue")
                            Image("Sample").resizable().scaledToFit().mask(LinearGradient(gradient: Gradient(stops: [
                                .init(color: .black, location: 0),
                                .init(color: .clear, location: 1),
                                .init(color: .black, location: 1),
                                .init(color: .clear, location: 1)
                            ]), startPoint: .top, endPoint: .bottom)).frame(maxHeight: .infinity,alignment: .top)
                            VStack {
                                HStack {
                                    Text("FEATURED").lineLimit(1).padding(.leading, 15).padding(.trailing, 15).padding(.top, 8).padding(.bottom, 5).font(.custom("Scheme",size: 15)).foregroundColor(.white.opacity(2)).background(Color("IconBlue")).cornerRadius(15)
                                    Button(action: {
                                        show1 = false
                                    }, label : {
                                        Image(systemName: "xmark.circle.fill").resizable().frame(width: 40,height: 40).offset(y:-5).foregroundColor(.white).symbolRenderingMode(.hierarchical)
                                    }).frame(maxWidth: .infinity,alignment: .trailing).padding()
                                }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top).padding(.leading, 20).padding(.top,50)
                                VStack {
                                    Text("15 MINUTES").font(.callout).fontWeight(.bold).frame(maxWidth: .infinity,alignment:.leading).foregroundColor(.white.opacity(0.7))
                                    Text("Tricks to save more").font(.title2)
                                        .foregroundColor(.white).fontWeight(.heavy).shadow(color:.black, radius: 20).frame(maxWidth: .infinity,alignment:.leading)
                                    Text("Award-winning saleswoman from Italy.").font(.body).foregroundColor(.white).fontWeight(.light).frame(maxWidth: .infinity,alignment:.leading)
                                }.padding()
                            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                        }.cornerRadius(10).shadow(color: .gray.opacity(0.5), radius: 40,y:+5).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top).ignoresSafeArea(.all)
                    })
                    }
            }.onTapGesture {
                show1.toggle()
            }
            HStack {
                Image(systemName:"line.3.horizontal.decrease.circle").foregroundColor(.white).padding(.leading,15)
                Text("Filter").font(.title3).fontWeight(.bold).foregroundColor(.white).padding([.top,.bottom],10).padding(.trailing,15)
            }.background(Color("IconBlue")).cornerRadius(20).frame(height: 50).frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .topTrailing).shadow(color: .black.opacity(0.4), radius: 30).padding(12)
        }
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
