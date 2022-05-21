//
//  Article1.swift
//  CalorieCalculator
//
//  Created by Vanessa Ladiocha on 07/04/22.
//

import SwiftUI

struct Article1: View {
    var body: some View {
        ScrollView {
            VStack{
                
                Image("article 1")
                    .resizable()
                    .frame(width: 350, height: 300)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .padding(.top, -40)
                
                Text("What is Calorie?")
                    .bold()
                    .font(.largeTitle)
                    .padding(.bottom)
                    .padding(.top)
                    
                
                
                Text("A calorie is a unit of energy. In nutrition, calories refer to the energy people get from the food and drink they consume, and the energy they use in physical activity. Calories are listed in the nutritional information on all food packaging. Many weight loss programs center around reducing the intake of calories.")
                    .padding(.top, -8)
                    .padding(.leading)
                    .padding(.trailing)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                
                VStack {
                    Text("Most people only associate calories with food and drink, but anything that contains energy has calories. 1 kilogram (kg) of coal, for example, contains 7,000,000 calories.")
                        .padding()
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                }
                Spacer()
                VStack {
                    Text("There are two types of calorie:")
                        .padding(.leading, -123)
                        .multilineTextAlignment(.leading)
        
                    Text(" • A small calorie (cal) ")
                        .bold()
                        .padding(.leading, -150)
                        .padding(.top, 1)
                        .multilineTextAlignment(.leading)
                    
                    Text("is the amount of energy required to raise the temperature of 1 gram (g) of water by 1º Celsius (º C).")
                        .padding(.top, -4)
                        .padding(.leading)
                        .padding(.trailing)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                        
                    
                }

                VStack {
                   Text(" • A large calorie (kcal)")
                        .bold()
                        .padding(.leading, -150)
                        .padding(.top, 1)
                        .multilineTextAlignment(.leading)
                    
                    Text("is the amount of energy required to raise 1 kilogram (kg) of water by 1º C. It is also known as a kilocalorie.")
                        .padding(.top, -4)
                        .padding(.leading)
                        .padding(.trailing)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("1 kcal is equal to 1,000 cal.")
                        .bold()
                        .font(.custom("test", size: 20))
                        .padding(.top, 4)
                        .padding(.bottom,4)
                        .background(.yellow)
                        .cornerRadius(10)
                        .padding(.top, 10)
                        .padding(.leading)
                        .padding(.trailing)
                        
                        
                }

            }
        }
    }
}
            
//            Text("Most people only associate calories with food and drink, but anything that contains energy has calories. 1 kilogram (kg) of coal, for example, contains 7,000,000 calories.")
//                .padding()
//                .multilineTextAlignment(.leading)
//
//            Text("There are two types of calorie:")
//                .padding(.leading, -125)
//                .multilineTextAlignment(.leading)
//
//            Text(" • A small calorie (cal) ")
//                .bold()
//                .padding(.leading, -150)
//                .padding(.top, 1)
//                .multilineTextAlignment(.leading)
//
//            Text("""
//            is the amount of energy required to raise the
//            temperature of 1 gram (g) of water by 1º
//            Celsius (º C).
//            """)
//
//                .multilineTextAlignment(.leading)
//                .padding(.top, 1)
//                .padding(.leading)
//                .padding(.trailing)
//
//            Text(" • A large calorie (kcal)")
//                .bold()
//                .padding(.leading, -150)
//                .padding(.top, 1)
//                .multilineTextAlignment(.leading)
//
//            Text("is the amount of energy required to raise 1 kilogram (kg) of water by 1º C. It is also known as a kilocalorie.")
//
//                .multilineTextAlignment(.leading)
//                .padding(.top, 1)
//                .padding(.leading)
//                .padding(.trailing)
        

struct Article1_Previews: PreviewProvider {
    static var previews: some View {
        Article1()
    }
}
