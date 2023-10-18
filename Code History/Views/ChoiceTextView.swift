//
//  ChoiceTextView.swift
//  Code History
//
//  Created by wesley osborne on 10/16/23.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accentColor, width: 4)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Choice Text!")
}
