//
//  WelcomeView.swift
//  Code History
//
//  Created by wesley osborne on 10/18/23.
//

import SwiftUI

struct WelcomeView: View {
    
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    
    var body: some View {
        NavigationView {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Select the correct answers to the following questions.")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding()
                    Spacer()
                    NavigationLink(destination: GameView(), label: {
                        HStack {
                            Spacer()
                            Text("Okay, let's go!")
                                .font(.body)
                                .bold()
                                .padding()
                            Spacer()
                        }.background(accentColor)
                    })
                }
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
