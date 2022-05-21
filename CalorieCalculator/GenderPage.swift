//
//  GenderPage.swift
//  CaorieCalculator
//
//  Created by Vanessa Ladiocha on 05/04/22.
//

import SwiftUI

struct GenderPage: View {
    @State var gender : String = ""
    @State var isGenderSet : Bool = false
    @State var isSubmitted : Bool = false
    
    var body: some View {
        //NavigationView {
            VStack(){
                Text("Gender")
                    .bold()
                    .font(.largeTitle)
                    .lineSpacing(40)
                    .padding(.top, -35)
               
                    HStack{
                        Spacer()
                        Button("Male"){
                            gender = "Male"
                            print(gender)
                        }
                        .foregroundColor(.white)
                        .padding(.leading,10)
                        .padding(.trailing, 10)
                        .padding()
                        .background(gender == "Male" ? .green : .black)
                        .cornerRadius(12)
                        
                        Spacer()
                        Spacer()
                            

                        Button("Female"){
                            gender = "Female"
                            print(gender)
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(gender == "Female" ? .green : .black)
                        .cornerRadius(12)
                        Spacer()
                        
                        
                    }
                VStack (alignment: .leading){
                HStack {
                    Image(systemName: "info.circle.fill")
                    Text("Gender is used to calculate your calorie")
                }.padding()
               
                if isSubmitted && !isGenderSet {
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "exclamationmark.triangle.fill")
                            .foregroundColor(.red)
                            .imageScale(.large)
                            
                    
                        Text("Please select gender!")
                            .font(.caption)
                            .bold()
                            .foregroundColor(.white)
                            .padding(3)
                            .background(.red)
                            .cornerRadius(5)
                    }
                    .padding(.top, -15)
                    .padding(.leading)
                    }
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                
                /**
                 
                 NavigationLink(destination: SheetView(), isActive: $answer, label: {
                                 Button(action: {
                                     answer = test(value: 2)
                                 }, label: {
                                     Text("Calculate")
                                 })
                             })
                 */
                NavigationLink(destination: CalculatePage(gender: gender),isActive: $isGenderSet, label: {
                    
                    Button(action: {
                        isGenderSet = getGenderSet(gender:gender)
                        isSubmitted = true
                    
                    }, label: {
                        Text("Continue")
                            .bold()
                    } )
                })
                .foregroundColor(.white)
                .padding(.leading, 60)
                .padding(.trailing, 60)
                .padding(.top)
                .padding(.bottom)
                .background(.green)
                .cornerRadius(12)
                .padding(.bottom, 45)
                
                /**
                 .foregroundColor(.white)
                 .padding(.trailing, 50)
                 .padding(.leading, 50)
                 .padding()
                 .background(.green)
                 .cornerRadius(12)
                 .padding(.bottom, 100)
                 */
                
              // Spacer()
            }
            //.padding(.top, -50)
       // }
        //.navigationBarHidden(true)
//        .navigationBarBackButtonHidden(false)
//        .navigationTitle("Gender")
//        .navigationBarTitleDisplayMode(.inline)
        //.navigationViewStyle(.stack)
    }
}


func getGenderSet(gender: String) -> Bool {
   print("Test")
    if gender == "" {
        return false
    } else {
        return true
    }
}

struct GenderPage_Previews: PreviewProvider {
    static var previews: some View {
        GenderPage()
    }
}
