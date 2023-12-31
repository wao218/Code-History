//
//  ContentView.swift
//  Code History
//
//  Created by wesley osborne on 10/13/23.
//

import SwiftUI

struct GameView: View {
    
   @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.mainColor.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundStyle(.white)
        .navigationBarBackButtonHidden()
        .environmentObject(viewModel)
        .background(
            NavigationLink(
                destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                isActive: .constant(viewModel.gameIsOver),
                label: { EmptyView()}
            )
        )
    }
}

#Preview {
    GameView()
}
