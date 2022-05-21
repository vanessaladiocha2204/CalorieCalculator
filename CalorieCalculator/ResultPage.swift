//
//  ResultPage.swift
//  CalorieCalculator
//
//  Created by Vanessa Ladiocha on 06/04/22.
//

import SwiftUI

struct article {
    var image: String
    var title: String
    var minute: String
}

struct ResultPage: View {
    var gender: String = ""
    var calorie : Calorie = Calorie(weight: "", height: "", age: "")
    var calculationResult : String = ""
    var selectedActivityLevel : String = ""
    
   
    @State var articles: [article] = [
        article(image: "article 1", title: "What is Calorie?", minute: "1 min read"),
        
        article(image: "article 2", title: "Calories and Health", minute: "1 min read"),
        
        article(image: "article 3", title: "Eating a Balanced Diet", minute: "1 min read")
    ]
    
    var body: some View {
        VStack {
            
            Text("Your daily calorie need is:")
                .bold()
                .padding(4)
                .padding(.leading, 5)
                .padding(.trailing, 5)
                .foregroundColor(.white)
                .background(.green)
                .cornerRadius(10)
                .padding(.top, -30)
            
            
            
            if gender == "Female" {
            Text("\(femaleCalory(beratBadan: calorie.weight, usia: calorie.age, tinggiBadan: calorie.height, activityLevel: selectedActivityLevel))")
                .bold()
                .font(.custom("", size: 80))
               // .padding(.bottom, 50)
                .padding()
            } else {
                Text("\(maleCalory(beratBadan: calorie.weight, usia: calorie.age, tinggiBadan: calorie.height, activityLevel: selectedActivityLevel))")
                    .bold()
                    .font(.custom("", size: 80))
                    .padding()
            }
            
            Text("KCal")
                .bold()
                .font(.custom("", size: 25))
                .padding(.leading, 250)
                .padding(.top, -30)
            
            List{
                
                Section() {
                    NavigationLink(destination: Article1()) {
                        CardView(theArticle: articles[0])
                    }
                }
                
                Section() {
                    NavigationLink(destination: Article2()) {
                        CardView(theArticle: articles[1])
                    }
                }
                
                Section() {
                    NavigationLink(destination: Article3()) {
                        CardView(theArticle: articles[2])
                    }
                }
                
                
            }.listStyle(.insetGrouped)
                
        }
        
    }
}

struct CardView: View {
    var theArticle : article
    var body: some View {
        HStack{
            Image(theArticle.image)
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(4)
                .padding(.leading, -15)
                .padding(15)
            VStack(alignment: .leading){
                Text(theArticle.title)
                .bold()
                .font(.headline)
                
                
                Text(theArticle.minute)
                    .font(.subheadline)
                    
            }
            .padding(.leading, 4)
            .padding(.bottom, 10)
            .padding(.bottom, 10)
        }
    }
}





func femaleCalory(beratBadan: String, usia: String, tinggiBadan: String, activityLevel: String) -> String{

    let beratBadanD = Double(beratBadan) ?? 0.0
    let usiaD = Double(usia) ?? 0.0
    let tinggiBadanD = Double(tinggiBadan) ?? 0.0
    let activity : String = activityLevel
    var activityVal : Double = 0.0

    if activity == "Sedentary" {
        activityVal = 1.2
    } else if activity == "Mildly Active"{
        activityVal = 1.375
    } else if activity == "Moderately Active" {
        activityVal = 1.55
    } else if activity == "Heavily Active" {
        activityVal = 1.725
    } else if activity == "Extremely Active" {
        activityVal = 1.9
    }

    let kons1: Double = 655.0
    let kons2: Double = 9.6
    let kons3: Double = 4.7
    let kons4: Double = 1.8

    let cal1 : Double = (kons2 * beratBadanD)
    let cal2 : Double = (kons4 * tinggiBadanD)
    let cal3 : Double = (kons3 * usiaD)
    let result: Double = round((kons1 + cal1 + cal2 - cal3) * activityVal)

        //print("\(result)")
    let resultStr = String(result)
    return resultStr

}

func maleCalory(beratBadan: String, usia: String, tinggiBadan: String, activityLevel: String) -> String{

    let beratBadanD = Double(beratBadan) ?? 0.0
    let usiaD = Double(usia) ?? 0.0
    let tinggiBadanD = Double(tinggiBadan) ?? 0.0
    let activity : String = activityLevel
    var activityVal : Double = 0.0

    if activity == "Sedentary" {
        activityVal = 1.2
    } else if activity == "Mildly Active"{
        activityVal = 1.375
    } else if activity == "Moderately Active" {
        activityVal = 1.55
    } else if activity == "Heavily Active" {
        activityVal = 1.725
    } else if activity == "Extremely Active" {
        activityVal = 1.9
    }

    let kons1: Double = 66.0
    let kons2: Double = 13.7
    let kons3: Double = 6.8
    let kons4: Double = 5

    let cal1 : Double = (kons2 * beratBadanD)
    let cal2 : Double = (kons4 * tinggiBadanD)
    let cal3 : Double = (kons3 * usiaD)
    let result: Double = round((kons1 + cal1 + cal2 - cal3) * activityVal)

        //print("\(result)")
    let resultStr = String(result)
    return resultStr

}

   


struct ResultPage_Previews: PreviewProvider {
    static var previews: some View {
        ResultPage()
    }
}

