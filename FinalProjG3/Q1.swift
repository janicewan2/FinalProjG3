//
//  Quiz.swift
//  FinalProjG3
//
//  Created by Conrad Wan on 17/8/2023.
//

import SwiftUI

struct Q1: View {
    @EnvironmentObject var settings: GameSettings
    @State private var lightHours = 0.0
    //@State var carbonEmissions = 0.0
    var body: some View {
        NavigationStack{
            ZStack {
                Color(hex:"#a3b18a")
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Today, approximately how many hours did you have light bulbs on in your house that YOU turned on?")
                        .foregroundColor(Color(hex:"#283618"))
                        .multilineTextAlignment(.center)
                        .bold()
                        .font(.body)
                        .padding()
                    HStack{
                        TextField("Enter a number", value: $lightHours, formatter: NumberFormatter()){
                            settings.carbonEmissions = settings.carbonEmissions + (lightHours*7.6125)
                        } //end of textfield
                        .padding()
                        .background(Color.white)
                        NavigationLink(destination: Q2()){
                            Image("ButtonArrow")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60.0, height: 50.0)
                        }
                    } //end of HStack
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding()
                    Spacer()
                } //end of VStack
            } // end of Ztack
        }
    }
}

struct Q1_Previews: PreviewProvider {
    static var previews: some View {
        Q1().environmentObject(GameSettings())
    }
}
