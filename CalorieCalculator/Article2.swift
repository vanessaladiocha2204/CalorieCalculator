//
//  Article2.swift
//  CalorieCalculator
//
//  Created by Vanessa Ladiocha on 08/04/22.
//

import SwiftUI

struct Article2: View {
    var body: some View {
        ScrollView{
            VStack{
                Image("article 2")
                    .resizable()
                    .frame(width: 350, height: 300)
                    
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .padding(.top, -40)
                
                Text("Calories and Health")
                    .bold()
                    .font(.largeTitle)
                    .padding(.bottom)
                    .padding(.top)
                
                VStack(alignment: .leading) {
                    Text("The human body needs calories to survive. Without energy, the cells in the body would die, the heart and lungs would stop, and the organs would not be able to carry out the basic processes needed for living. People absorb this energy from food and drink.")
                        .padding(.top, -8)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    Text("If people consumed only the number of calories needed every day, they would probably have healthy lives. Calorie consumption that is too low or too high will eventually lead to health problems.")
                        .padding(.top, 2)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("The number of calories in food tells us how much potential energy they contain. It is not only calories that are important, but also the substance from which the calories are taken.")
                        .padding(.top, 2)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("Below are the calorific values of three main components of food:")
                        .padding(.top, 2)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                }.padding()
                
                
                
                VStack(alignment: .leading) {
                    Text("• 1 g of carbohydrates contains 4 kcal")
                    .padding(.top, 2)
                    .padding(.leading, 1)
                    .multilineTextAlignment(.leading)
                    
                    Text("• 1 g of protein contains 4 kcal")
                    .padding(.top, 2)
                    .padding(.leading, 1)
                    .multilineTextAlignment(.leading)
                    
                    Text("• 1 g of fat contains 9 kcal")
                    .padding(.top, 2)
                    .padding(.leading, 1)
                    .multilineTextAlignment(.leading)
                }
                
                VStack(alignment: .leading){
                    Text("As an example, here is the breakdown of how a person would get calories from one cup of large eggsTrusted Source, weighing 243 g:")
                    .padding(.top, 2)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    
                }.padding()
            
                VStack(alignment: .leading){
                    Text("Fat: 23.11 g")
                        .bold()
                        .padding(.leading)
                    
                    Text("23.11 g x 9 kcal = 207.99 kcal")
                        .padding(.leading)
                        .padding(.top, 2)
                    
                    Text("Protein: 30.52 g")
                        .bold()
                        .padding(.leading)
                        .padding(.top, 2)
                    
                    Text("30.52 x 4 kcal = 122.08 kcal")
                        .padding(.leading)
                        .padding(.top, 2)
                    
                    Text("Carbohydrate: 1.75 g")
                        .bold()
                        .padding(.leading)
                        .padding(.top, 2)
                    
                    Text("1.75 x 4 kcal = 7 kcal")
                        .padding(.leading)
                        .padding(.top, 2)
                }.padding(.leading, -70)
                
                VStack(alignment: .leading){
                    Text("243 g of raw egg contains 347 kcal. 208 kcal comes from fat, 122 kcal is taken from protein, and carbohydrate provides 7 kcal.")
                        .padding(.top, 2)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                }.padding()
            
                
            }
        }
    }
}

struct Article2_Previews: PreviewProvider {
    static var previews: some View {
        Article2()
    }
}
