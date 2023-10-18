//
//  WelcomeView.swift
//  Code History
//
//  Created by wesley osborne on 10/18/23.
//

import SwiftUI

struct WelcomeView: View {
    
    
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.mainColor.ignoresSafeArea()
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
                        }.background(GameColor.accentColor)
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
