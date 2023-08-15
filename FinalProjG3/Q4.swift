//
//  Q4.swift
//  FinalProjG3
//
//  Created by Conrad Wan on 18/8/2023.
//

import SwiftUI

struct Q4: View {
    @EnvironmentObject var settings: GameSettings
    @State private var heatHours = 0.0
    //@Binding var carbonEmissions : Double
    var body: some View {
        NavigationStack{
            ZStack {
                Color(hex:"#a3b18a")
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Approximately how many hours did you have heating on today?")
                        .foregroundColor(Color(hex:"#283618"))
                        .multilineTextAlignment(.center)
                        .bold()
                        .font(.body)
                        .padding()
                    HStack{
                        TextField("Enter a number", value: $heatHours, formatter: NumberFormatter()){
                            settings.carbonEmissions = settings.carbonEmissions + (heatHours*3.5*295)
                        } //end of textfield
                        .padding()
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                        NavigationLink(destination: Q5()){
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

struct Q4_Previews: PreviewProvider {
    static var previews: some View {
        Q4().environmentObject(GameSettings())
    }
}
