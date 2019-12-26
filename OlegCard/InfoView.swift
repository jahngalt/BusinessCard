//
//  InfoView.swift
//  OlegCard
//
//  Created by Oleg Kudimov on 12/26/19.
//  Copyright © 2019 Oleg Kudimov. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
               
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
                    
                // This line needs to correct work with dark theme 
                .foregroundColor(Color("Info Color"))
               
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "blablba@mail.com", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
