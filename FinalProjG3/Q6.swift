//
//  Q6.swift
//  FinalProjG3
//
//  Created by Conrad Wan on 18/8/2023.
//

import SwiftUI

struct Q6: View {
    @EnvironmentObject var settings: GameSettings
    @State private var airDistance = 0.0
    //@Binding var carbonEmissions : Double
    var body: some View {
        NavigationStack{
            ZStack {
                Color(hex:"#a3b18a")
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("How far have you travelled by plane today, in km?")
                        .foregroundColor(Color(hex:"#283618"))
                        .multilineTextAlignment(.center)
                        .bold()
                        .font(.body)
                        .padding()
                    HStack{
                        TextField("Enter a number", value: $airDistance, formatter: NumberFormatter()){
                            settings.carbonEmissions = settings.carbonEmissions + (airDistance*150)
                        } //end of textfield
                        .padding()
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                        NavigationLink(destination: Q7()){
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

struct Q6_Previews: PreviewProvider {
    static var previews: some View {
        Q6().environmentObject(GameSettings())
    }
}

