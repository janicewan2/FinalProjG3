//
//  SwiftUIView.swift
//  FinalProjG3
//
//  Created by Conrad Wan on 17/8/2023.
//

import SwiftUI

struct Settings: View {
    @State var name: String
    var body: some View {
        TextField("Enter your name:", text: $name)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings(name: "")
    }
}
