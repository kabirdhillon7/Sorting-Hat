//
//  Question.swift
//  Sorting Hat
//
//  Created by Kabir Dhillon on 2/26/23.
//

import Foundation

struct Question {
    let text: String
    let answers: [Answer]
}

struct Answer {
    let text: String
    let affiliation: HogwartsHouse
}

enum HogwartsHouse: String {
    case Gryffindor
    case Ravenclaw
    case Hufflepuff
    case Slytherin
}
