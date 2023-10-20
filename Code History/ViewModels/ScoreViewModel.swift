//
//  ScoreViewModel.swift
//  Code History
//
//  Created by wesley osborne on 10/19/23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
