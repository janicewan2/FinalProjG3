//
//  ContentView.swift
//  FinalProjG3
//
//  Created by Conrad Wan on 16/8/2023.
//

import SwiftUI
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet(charactersIn: "#"))
        let rgbValue = UInt32(hex, radix: 16)
        let r = Double((rgbValue! & 0xFF0000) >> 16) / 255
        let g = Double((rgbValue! & 0x00FF00) >> 8) / 255
        let b = Double(rgbValue! & 0x0000FF) / 255
        self.init(red: r, green: g, blue: b)
    }
}
class GameSettings: ObservableObject {
    @Published var carbonEmissions = 0.0
}

struct ContentView: View {
    @StateObject var settings = GameSettings()
    @EnvironmentObject var settings1: GameSettings
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
                        HStack{
                            Text("Welcome, \n(Name)!")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        Spacer(minLength: 50)
                            NavigationLink(destination:CarbonTracker()){
                                VStack{
                                    HStack{
                                        Image("CarbonLog")
                                            .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 70.0, height: 70.0)
                                        Text("Carbon Log")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(hex: "#606C38"))
                                        Spacer()
                                    } //Button HStack end
                                    HStack{
                                        Text("\(settings1.carbonEmissions/1000)")
                                            .font(.title)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color(hex:"#283618"))
                                            .multilineTextAlignment(.leading)
                                        Text("kilograms of CO2")
                                            .font(.body)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(hex: "#606C38"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                    } //Button HStack 2 end
                                    HStack{
                                        Text("Last Log: Today")
                                            .font(.body)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color(hex:"#8b8c89"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                        Image("ButtonArrow")
                                            .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 40.0, height: 40.0)
                                    } //Button HStack 3 end
                                } //Button VStack end
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                                .cornerRadius(20)
                            } //carbonlog navlink end
                            NavigationLink(destination:TrendsOverTime()){
                                VStack{
                                    HStack{
                                        Image("TrendsOverTime")
                                            .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 70.0, height: 70.0)
                                        Text("Weekly Average")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(hex: "#568668"))
                                        Spacer()
                                    } //Button HStack end
                                    HStack{
                                        Text("\((settings1.carbonEmissions/1000))")
                                            .font(.title)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color(hex:"#3F5546"))
                                            .multilineTextAlignment(.leading)
                                        Text("kilograms of CO2")
                                            .font(.body)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(hex: "#568668"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                    } //Button HStack 2 end
                                    HStack{
                                        Text("Trends Over Time ")
                                            .font(.body)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color(hex:"#8b8c89"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                        Image("ButtonArrow")
                                            .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 40.0, height: 40.0)
                                    } //Button HStack 3 end
                                } //Button VStack end
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                                .cornerRadius(20)
                            } //end of trendsovertime navlink
                            NavigationLink(destination:Suggestions()){
                                VStack{
                                    HStack{
                                        Image("Suggestions")
                                            .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 60.0, height: 60.0)
                                        Text("Suggestion of the day")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(hex: "#3a7ca5"))
                                        Spacer()
                                    } //Button HStack end
                                    HStack{
                                        Text("Eat less meat")
                                            .font(.title)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color(hex:"#184E77"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                    }
                                    HStack{
                                        Text("See more suggestions")
                                            .font(.body)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color(hex:"#8b8c89"))
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                        Image("ButtonArrow")
                                            .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 40.0, height: 40.0)
                                    } //Button HStack 3 end
                                } //Button VStack end
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                                .cornerRadius(20)
                            } //end of suggestions navlink
                        Spacer()
                    }
                    .padding()
                }
            }
        }
        .environmentObject(settings)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GameSettings())
    }
}
