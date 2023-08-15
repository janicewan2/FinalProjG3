//
//  Q5.swift
//  FinalProjG3
//
//  Created by Conrad Wan on 18/8/2023.
//

import SwiftUI

struct Q5: View {
    @EnvironmentObject var settings: GameSettings
    @State private var carDistance = 0.0
    //@Binding var carbonEmissions : Double
    var body: some View {
        NavigationStack{
            ZStack {
                Color(hex:"#a3b18a")
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("How far have you travelled on car today, in km? Electric vehicle and public transport travel does not count - only car travel counts.")
                        .foregroundColor(Color(hex:"#283618"))
                        .multilineTextAlignment(.center)
                        .bold()
                        .font(.body)
                        .padding()
                    HStack{
                        TextField("Enter a number", value: $carDistance, formatter: NumberFormatter()){
                            settings.carbonEmissions = settings.carbonEmissions + (carDistance*192)
                        } //end of textfield
                        .padding()
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                        NavigationLink(destination: Q6()){
                            Image("ButtonArrow")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60.0, height: 50.0)
                        }
                    } //end of HStack
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    .cornerRadius(15)
                    .padding()
                    Spacer()
                } //end of VStack
            } // end of Ztack
        }
    }
}

struct Q5_Previews: PreviewProvider {
    static var previews: some View {
        Q5().environmentObject(GameSettings())
    }
}
