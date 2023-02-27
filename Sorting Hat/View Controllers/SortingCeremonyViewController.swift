//
//  SortingCeremonyViewController.swift
//  Sorting Hat
//
//  Created by Kabir Dhillon on 2/26/23.
//

import UIKit

class SortingCeremonyViewController: UIViewController {
    
    var sortingQuestions = [Question]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpQuestions()
    }
    
    private func setUpQuestions() {
        sortingQuestions.append(Question(text: "What kind of instrument most pleases your ear?",
                                         answers: [Answer(text: "The violin", affiliation: .Gryffindor),
                                                   Answer(text: "The trumpet", affiliation: .Ravenclaw),
                                                   Answer(text: "The piano", affiliation: .Hufflepuff),
                                                   Answer(text: "The drum", affiliation: .Slytherin)]))
        sortingQuestions.append(Question(text: "Which of the following would you most hate people to call you?",
                                         answers: [Answer(text: "Ordinary", affiliation: .Gryffindor),
                                                   Answer(text: "Ignorant", affiliation: .Ravenclaw),
                                                   Answer(text: "Cowardly", affiliation: .Hufflepuff),
                                                   Answer(text: "Selfish", affiliation: .Slytherin)]))
        sortingQuestions.append(Question(text: "You enter an enchanted garden. What would you be most curious to examine first?",
                                         answers: [Answer(text: "The silver leafed tree bearing golden apples", affiliation: .Gryffindor),
                                                   Answer(text: "The fat red toadstools that appear to be talking to each other", affiliation: .Ravenclaw),
                                                   Answer(text: "The bubbling pool, in the depths of which something luminous is swirling", affiliation: .Hufflepuff),
                                                   Answer(text: "The statue of an old wizard with a strangely twinkling eye", affiliation: .Slytherin)]))
        sortingQuestions.append(Question(text: "Four goblets are placed before you. Which would you choose to drink?",
                                         answers: [Answer(text: "The foaming, frothing, silvery liquid that sparkles as though containing ground diamonds.", affiliation: .Gryffindor),
                                                   Answer(text: "The smooth, thick, richly purple drink that gives off a delicious smell of chocolate and plums.", affiliation: .Ravenclaw),
                                                   Answer(text: "The golden liquid so bright that it hurts the eye, and which makes sunspots dance all around the room.", affiliation: .Hufflepuff),
                                                   Answer(text: "The mysterious black liquid that gleams like ink, and gives off fumes that make you see strange visions.", affiliation: .Slytherin)]))
        sortingQuestions.append(Question(text: "You and two friends need to cross a bridge guarded by a river troll who insists on fighting one of you before he will let all of you pass. Do you:",
                                         answers: [Answer(text: "Attempt to confuse the troll into letting all three of you pass without fighting?", affiliation: .Gryffindor),
                                                   Answer(text: "Suggest drawing lots to decide which of you will fight?", affiliation: .Ravenclaw),
                                                   Answer(text: "Suggest that all three of you should fight (without telling the troll)?", affiliation: .Hufflepuff),
                                                   Answer(text: "Volunteer to fight?", affiliation: .Slytherin)]))
        sortingQuestions.append(Question(text: "Once every century, the Flutterby bush produces flowers that adapt their scent to attract the unwary. If it lured you, it would smell of:",
                                         answers: [Answer(text: "A crackling log fire", affiliation: .Gryffindor),
                                                   Answer(text: "The sea", affiliation: .Ravenclaw),
                                                   Answer(text: "Fresh parchment", affiliation: .Hufflepuff),
                                                   Answer(text: "Home", affiliation: .Slytherin)]))
        sortingQuestions.append(Question(text: "How would you like to be known to history?",
                                         answers: [Answer(text: "The Wise", affiliation: .Gryffindor),
                                                   Answer(text: "The Good", affiliation: .Ravenclaw),
                                                   Answer(text: "The Great", affiliation: .Hufflepuff),
                                                   Answer(text: "The Bold", affiliation: .Slytherin)]))
        
    }
}

