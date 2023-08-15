//
//  Suggestions.swift
//  FinalProjG3
//
//  Created by Conrad Wan on 17/8/2023.
//

import SwiftUI

struct Suggestions: View {
  var body: some View {
      ZStack {
          Color(hex: "#a3b18a")
        .ignoresSafeArea()
          VStack {
              Text("GreenTrack")
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(Color.white)
              .multilineTextAlignment(.leading)
              Spacer()
              Text("Suggestions of the day")
                  .font(.title)
                  .fontWeight(.bold)
                  .foregroundColor(Color.white)
                  .multilineTextAlignment(.center)
              ScrollView{
                  VStack {
                      let sugs = give()
                      Spacer(minLength: 50)
                      VStack{
                            HStack{
                                Text("Suggestion #1")
                                    .multilineTextAlignment(.leading)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(hex:"#3a7ca5"))
                                Spacer()
                              }
                            HStack{
                                Text(sugs.0)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(hex:"#3a7ca5"))
                                    .multilineTextAlignment(.leading)
                                Spacer()
                            }
                      }
                      .padding(30)
                      .background(Color.white)
                      .cornerRadius(15)
                      Spacer(minLength: 20)
                          VStack{
                              HStack{
                                  Text("Suggestion #2")
                                      .multilineTextAlignment(.leading)
                                      .font(.title)
                                      .fontWeight(.bold)
                                      .foregroundColor(Color(hex:"#3a7ca5"))
                                  Spacer()
                              }
                              HStack{
                                  Text(sugs.1)
                                      .font(.title3)
                                      .fontWeight(.semibold)
                                      .foregroundColor(Color(hex:"#3a7ca5"))
                                      .multilineTextAlignment(.leading)
                                  Spacer()
                              }
                          }
                      .padding(30)
                      .background(Color.white)
                      .cornerRadius(15)
                      Spacer(minLength: 20)
                      VStack{
                          HStack{
                              Text("Suggestion #3")
                                  .multilineTextAlignment(.leading)
                                  .font(.title)
                                  .fontWeight(.bold)
                                  .foregroundColor(Color(hex:"#3a7ca5"))
                              Spacer()
                          }
                          HStack{
                              Text(sugs.2)
                                  .font(.title3)
                                  .fontWeight(.semibold)
                                  .foregroundColor(Color(hex:"#3a7ca5"))
                                  .multilineTextAlignment(.leading)
                              Spacer()
                          }
                      }
                      .padding(30)
                      .background(Color.white)
                      .cornerRadius(15)
                      Spacer(minLength: 20)
                  }
                  .padding()
              }
      }
      .padding()
    }//end of ZStack
  }
    private func give() -> (String, String, String){
      var suggestions = ["Reduce your consumption of animal products!","Make an effort to use public transport!","Use alternatives to single-use plastic products, like metal straws and reusable water bottles!","Try to use fans instead of air conditioning, and if viable, switch to solar panels!","Buy locally grown food!"]
      let pos1 = Int.random(in: 0..<suggestions.count)
      let one = suggestions[pos1]
      suggestions.remove(at: pos1)
      let pos2 = Int.random(in: 0..<suggestions.count)
      let two = suggestions[pos2]
      suggestions.remove(at: pos2)
      let pos3 = Int.random(in: 0..<suggestions.count)
      let three = suggestions[pos3]
      suggestions.remove(at: pos3)
      return (one, two, three)
  }
}
struct Suggestions_Previews: PreviewProvider {
  static var previews: some View {
    Suggestions()
  }
}
