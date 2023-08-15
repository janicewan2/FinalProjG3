//
//  Q7.swift
//  FinalProjG3
//
//  Created by Conrad Wan on 18/8/2023.
//

import SwiftUI

struct Q7: View {
    @EnvironmentObject var settings: GameSettings
    @State private var meatAmt = 0.0
    @State var message = ""
    //@Binding var carbonEmissionsDisplay : Double
    //@Binding var carbonEmissions : Double
    var body: some View {
        NavigationStack{
            ZStack {
                Color(hex:"#a3b18a")
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Approximately how much meat have you eaten today, in grams?")
                        .foregroundColor(Color(hex:"#283618"))
                        .multilineTextAlignment(.center)
                        .bold()
                        .font(.body)
                        .padding()
                    HStack{
                        TextField("Enter a number", value: $meatAmt, formatter: NumberFormatter()){
                            settings.carbonEmissions = settings.carbonEmissions + (meatAmt*250)
                        } //end of textfield
                        .padding()
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    } //end of HStack
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    .cornerRadius(15)
                    .padding()
                    Text("You have emitted \(settings.carbonEmissions)g of CO2 today!")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .foregroundColor(Color.white)
                    Text(finalMessage(value: settings.carbonEmissions))
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    Spacer()
                    NavigationLink(destination: ContentView().environmentObject(settings)){
                        Image("ButtonArrow")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60.0, height: 50.0)
                    }
                } //end of VStack
            } // end of Ztack
        } //end of nav stack
        .environmentObject(settings)
    }
}

func finalMessage(value: Double) -> String {
    var message = ""
    if value/1000 < 17 {
          message = "Your carbon footprint is smaller than average! :)"
    } else if (value/1000 >= 17) && (value/1000 <= 21) {
          message = "Your carbon footprint is average."
        } else {
          message = "Your carbon footprint is bigger than average. :("
        }
    return message
} //end of func
struct Q7_Previews: PreviewProvider {
    static var previews: some View {
        Q7().environmentObject(GameSettings())
    }
}

