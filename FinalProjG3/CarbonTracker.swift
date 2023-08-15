//
//  CarbonTracker.swift
//  FinalProjG3
//
//  Created by Conrad Wan on 16/8/2023.
//

import SwiftUI

struct CarbonTracker: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(hex: "#a3b18a")
                    .ignoresSafeArea()
                VStack {
                    Text("GreenTrack")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                    ScrollView{
                        VStack{
                            HStack{
                                Text("Your carbon log")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                Spacer()
                                NavigationLink(destination: Q1()){
                                    Text("+")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                } //end of NavLink
                            } //end of HStack
                            Section{
                                VStack{
                                    HStack{
                                        Text("28.3939 kg CO2")
                                        Spacer()
                                        Text("17 Aug 2023")
                                    }
                                    Divider()
                                    HStack{
                                        Text("28.3939 kg CO2")
                                        Spacer()
                                        Text("16 Aug 2023")
                                    }
                                    Divider()
                                    HStack{
                                        Text("28.3939 kg CO2")
                                        Spacer()
                                        Text("15 Aug 2023")
                                    }
                                    Divider()
                                    HStack{
                                        Text("28.3939 kg CO2")
                                        Spacer()
                                        Text("14 Aug 2023")
                                    }
                                    Divider()
                                    HStack{
                                        Text("28.3939 kg CO2")
                                        Spacer()
                                        Text("13 Aug 2023")
                                    }
                                    
                                }//end of VStack
                            }//end of section
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                        } //end of VStack
                        .padding()
                    }
                } //end of VStack
            } //end of ZStack
        }//end of NavigationStack
    }
}

struct CarbonTracker_Previews: PreviewProvider {
    static var previews: some View {
        CarbonTracker()
    }
}
