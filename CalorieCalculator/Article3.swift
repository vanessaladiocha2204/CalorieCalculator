//
//  Article3.swift
//  CalorieCalculator
//
//  Created by Vanessa Ladiocha on 09/04/22.
//

import SwiftUI

struct Article3: View {
    var body: some View {
        ScrollView{
            VStack{
                Image("article 3")
                    .resizable()
                    .frame(width: 350, height: 300)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .padding(.top, -40)
                
                Text("Eating a Balanced Diet")
                    .bold()
                    .font(.largeTitle)
                    .padding(.bottom)
                    .padding(.top)
                
                VStack(alignment: .leading) {
                    Text("Eating a healthy, balanced diet is an important part of maintaining good health, and can help you feel your best.")
                        .padding(.top, -8)
                        .padding(.leading)
                        .padding(.trailing)
                        .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    Text("This means eating a wide variety of foods in the right proportions, and consuming the right amount of food and drink to achieve and maintain a healthy body weight.")
                        .padding(.top, 2)
                        .padding(.leading)
                        .padding(.trailing)
                        .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    Text("This page covers healthy eating advice for the general population.People with special dietary needs or a medical condition should ask their doctor or a registered dietitian for advice.")
                        .padding(.top, 2)
                        .padding(.leading)
                        .padding(.trailing)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                }
                
                Text("Food groups in your diet")
                    .bold()
                    .font(.largeTitle)
                    .padding(.bottom)
                    .padding(.top)
    
                VStack(alignment: .leading) {
                    Text("The Eatwell Guide shows that to have a healthy, balanced diet, people should try to:")
                        .padding(.top, -8)
                        .padding(.leading)
                        .padding(.trailing)
                        .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    VStack(alignment: .leading) {
                        Text("• Eat at least 5 portions of a variety of fruit and vegetables every day ")
                            .padding(.top, 2)
                            .padding(.leading )
                            .padding(.trailing)
                            .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                        
                        Text("• Base meals on higher fibre starchy foods like potatoes, bread, rice or pasta")
                            .padding(.top, 2)
                            .padding(.leading)
                            .padding(.trailing)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Text("• Have some dairy or dairy alternatives (such as soya drinks)")
                            .padding(.top, 2)
                            .padding(.leading)
                            .padding(.trailing)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Text("• Eat some beans, pulses, fish, eggs, meat and other protein")
                            .padding(.top, 2)
                            .padding(.leading)
                            .padding(.trailing)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Text("• Choose unsaturated oils and spreads, and eat them in small amounts")
                            .padding(.top, 2)
                            .padding(.leading)
                            .padding(.trailing)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Text("• Drink plenty of fluids (at least 6 to 8 glasses a day)")
                            .padding(.top, 2)
                            .padding(.leading)
                            .padding(.trailing)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                        
                    }.padding()
                    
                    Text("If you're having foods and drinks that are high in fat, salt and sugar, have these less often and in small amounts.")
                        .padding(.top, 2)
                        .padding(.leading)
                        .padding(.trailing)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("Try to choose a variety of different foods from the 5 main food groups to get a wide range of nutrients.")
                        .padding(.top, 2)
                        .padding(.leading)
                        .padding(.trailing)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                }
                   
            }
        }
    }
}

struct Article3_Previews: PreviewProvider {
    static var previews: some View {
        Article3()
    }
}
