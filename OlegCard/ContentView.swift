//
//  ContentView.swift
//  OlegCard
//
//  Created by Oleg Kudimov on 12/25/19.
//  Copyright © 2019 Oleg Kudimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
        Color(red:1.00, green:0.75, blue:0.46, opacity: 1.0).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("Oleg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 1)
                )
                
                Text("Oleg Kudimov")
            .font(.custom("Pacifico-Regular", size: 40))
                .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+12312312", imageName: "phone.fill")
                InfoView(text: "mail@mail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


