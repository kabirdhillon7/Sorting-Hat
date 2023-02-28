//
//  SortingResultsViewController.swift
//  Sorting Hat
//
//  Created by Kabir Dhillon on 2/26/23.
//

import UIKit

class SortingResultsViewController: UIViewController {
    
    var user: User!
    var hogwartsHouse: HogwartsHouse!
    
    
    @IBOutlet weak var houseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // need to calc result
    func calcHogwartsHouse() {
        let maxMatchCount = max(user.gryffindorMatchCount, user.ravenclawMatchCount, user.hufflepuffMatchCount, user.slytherinMatchCount)

        if maxMatchCount == user.gryffindorMatchCount {
            print("Gryffindor has the greatest number of matches: \(maxMatchCount)")
            hogwartsHouse = .Gryffindor
        } else if maxMatchCount == user.ravenclawMatchCount {
            print("Ravenclaw has the greatest number of matches: \(maxMatchCount)")
            hogwartsHouse = .Ravenclaw
        } else if maxMatchCount == user.hufflepuffMatchCount {
            print("Hufflepuff has the greatest number of matches: \(maxMatchCount)")
            hogwartsHouse = .Hufflepuff
        } else if maxMatchCount == user.slytherinMatchCount {
            print("Slytherin has the greatest number of matches: \(maxMatchCount)")
            hogwartsHouse = .Slytherin
        }
    }
    
    // configure result
    func configureView(house: HogwartsHouse) {
        if house == .Gryffindor {
            view.backgroundColor = .red
        } else if house == .Ravenclaw {
            view.backgroundColor = .blue
        } else if house == .Hufflepuff {
            view.backgroundColor = .yellow
        } else if house == .Slytherin {
            view.backgroundColor = .green
        }
    }

}
