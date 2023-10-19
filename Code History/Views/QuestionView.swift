//
//  QuestionView.swift
//  Code History
//
//  Created by wesley osborne on 10/18/23.
//

import SwiftUI

struct QuestionView: View {
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                    Button(action: {
                        print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                    }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                    }
                }
            }
        }
    }
}

#Preview {
    QuestionView(question: Game().currentQuestion
    )
}
