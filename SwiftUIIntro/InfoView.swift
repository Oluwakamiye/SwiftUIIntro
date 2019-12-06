//
//  InfoView.swift
//  SwiftUIIntro
//
//  Created by Oluwakamiye Akindele on 06/12/2019.
//  Copyright © 2019 Oluwakamiye Akindele. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text : String
    let imageName : String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 40)
            .foregroundColor(Color.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.blue)
                Text(text)
                .foregroundColor(Color("Info Color"))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
