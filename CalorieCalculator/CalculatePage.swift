//
//  CalculatePage.swift
//  CaorieCalculator
//
//  Created by Vanessa Ladiocha on 06/04/22.
//

import SwiftUI

struct Calorie {
    var weight: String
    var height: String
    var age: String
    
}


struct CalculatePage: View {
    var gender: String = ""
    @State var calorie = Calorie(weight: "", height: "", age: "")
    @State var selectedActivityLevel = ""
    @State var isFormSet : Bool = false
    @State var isSubmitted : Bool = false
   
    
    let activityLevel = ["Sedentary", "Mildly Active", "Moderately Active", "Heavily Active", "Extremely Active"]
    
    var body: some View {
        //NavigationView{
        ScrollView() {
            
            VStack{
                    Text("Calculate Your Calorie!")
                        .bold()
                        .font(.title)
                        .padding(.top)
                    
                    VStack(alignment: .leading) {
                        Text("Weight")
                            .bold()
                    
                    
                    TextField("Fill in your weight in kilogram", text: $calorie.weight)
                        .keyboardType(.decimalPad)
                        .padding()
                        .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.green, lineWidth: 2)
                            )
                
                    Text("Height")
                        .bold()
                        .padding(.top)
                    
                    TextField("Fill in your height in centimeter", text: $calorie.height)
                        
                        .padding()
                        .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.green, lineWidth: 2)
                            )
                        .keyboardType(.decimalPad)
                    
                    Text("Age")
                        .bold()
                        .padding(.top)
                    
                    TextField("Fill in your age", text: $calorie.age)
                        .keyboardType(.decimalPad)
                        .padding()
                        .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.green, lineWidth: 2)
                            )
                        
                        Text("Activity Level")
                            .bold()
                            .padding(.top)
                        
                        Picker("Activity Level", selection: $selectedActivityLevel){
                            Text("Select Your Activity Level")
                            ForEach(activityLevel, id: \.self){
                                Text($0)
                                    
                            }
                        }
                       
                        VStack (alignment: .leading){
                                           
                        if isSubmitted && !isFormSet {
                            HStack(alignment: .firstTextBaseline) {
                                Image(systemName: "exclamationmark.triangle.fill")
                                    .foregroundColor(.red)
                                    .imageScale(.large)
                                    
                            
                                Text("Please fill the form!")
                                    .font(.caption)
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(3)
                                    .background(.red)
                                    .cornerRadius(5)
                            }
                            .padding(.top, -3)
                            .padding(.leading, -1)
                            }
                        }
                        
                    }
                    .padding(.bottom, 150)
                    .padding(.top, 1)
                    //Spacer()
                
               
                   // Spacer()
                   
                    VStack {
                        NavigationLink(destination: ResultPage(gender: gender, calorie: calorie, selectedActivityLevel: selectedActivityLevel), isActive: $isFormSet, label: {
                            Button(action: {
                                isFormSet = getFormSet(weight: calorie.weight, height: calorie.weight, age: calorie.weight, selectedActivityLevel: selectedActivityLevel)
                                isSubmitted = true
                                
                            }, label: {
                                Text("Calculate")
                                    .bold()
                            })
                            
                        })
                        .onAppear() {
                            isSubmitted = false
                        }
    //                    .foregroundColor(.white)
    //                    .padding(.leading, 40)
    //                    .padding(.trailing, 40)
    //                    .padding(.top)
    //                    .padding(.bottom)
    //                    .background(.green)
    //                    .cornerRadius(12)
                        .foregroundColor(.white)
                        .padding(.trailing, 50)
                        .padding(.leading, 50)
                        .padding()
                        .background(.green)
                        .cornerRadius(12)
                        .padding(.bottom, 150)
                    }
                }
            .padding()
        }
        //}
//        .navigationTitle("Calculate Your Calorie")
//        .navigationBarTitleDisplayMode(.inline)
        //.navigationViewStyle(.stack)
    }
}

func getFormSet(weight: String, height: String, age: String, selectedActivityLevel: String) -> Bool {
   print("Test")
    if weight == "" {
        return false
    } else if height == "" {
        return false
    } else if age == "" {
        return false
    } else if selectedActivityLevel == "" || selectedActivityLevel == "Select Your Activity Level" {
        return false
    } else {
        return true
    }
}


struct CalculatePage_Previews: PreviewProvider {
    static var previews: some View {
        CalculatePage()
    }
}



