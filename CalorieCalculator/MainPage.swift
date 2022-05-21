//
//  OpeningPage.swift
//  CaorieCalculator
//
//  Created by Vanessa Ladiocha on 05/04/22.
//

import SwiftUI

struct MainPage: View {
   
    var body: some View {
       NavigationView {
            VStack {
                //Spacer()
                
               // Image("Calorie")
                    //.resizable()
                GifImage("giphy2")
                    .frame(width: 400, height: 400)
                    .padding(.top, -25)
//                Circle()
//                    .frame(width: 300, height: 300)
//                    .foregroundColor(.green)
                Text("Calorie Calculator")
                    .font(.largeTitle)
                    .bold()
                    .padding(-20)
                //Spacer()
                //Spacer()
                
                NavigationLink(destination: GenderPage(), label: {
                    Text("Calculate")
                        .bold()
                })
                .foregroundColor(.white)
                .padding(.trailing, 50)
                .padding(.leading, 50)
                .padding()
                .background(.green)
                .cornerRadius(12)
                .padding(.top, 200)
                //Spacer()
                                
            }
       }
       //.navigationViewStyle(.stack)
    }
}

struct OpeningPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
            //.previewInterfaceOrientation(.portrait)
    }
}
