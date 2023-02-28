//
//  ViewController.swift
//  Sorting Hat
//
//  Created by Kabir Dhillon on 2/26/23.
//

import UIKit

/*
 Need to do:
    Views:
    - Welcome
    - Question & Answer screen x8
    - Results
 Models:
 */

class StartViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // In case that user has been sorted already
        let defaults = UserDefaults.standard
        if defaults.object(forKey: "house") != nil && defaults.object(forKey: "user") != nil {
            if let houseString = defaults.object(forKey: "house"),
               let house = HogwartsHouse(rawValue: houseString as! String),
               let vc = self.storyboard?.instantiateViewController(withIdentifier: "results") as? SortingResultsViewController {
                
                vc.hogwartsHouse = house
                vc.modalPresentationStyle = .fullScreen
                present(vc, animated: true)
            }
        }
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "sortingCeremony"){
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
    }
    

}

