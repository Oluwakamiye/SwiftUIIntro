//
//  ContentView.swift
//  SwiftUIIntro
//
//  Created by Oluwakamiye Akindele on 06/12/2019.
//  Copyright © 2019 Oluwakamiye Akindele. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red:0.98, green:0.51, blue:0.19)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Akindele Oluwakamiye")
                    .bold()
                    .foregroundColor(.white)
                    .font(Font.custom("Roboto Slab", size: 35))
                Text("iOS developer")
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+234 803 184 0799", imageName: "phone.fill")
                InfoView(text: "karmmie1@gmail.com", imageName: "envelope.fill")

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(stringLiteral: "iPhone XE"))
    }
}
