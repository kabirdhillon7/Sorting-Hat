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

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        hogwartsHouse = calcHogwartsHouse()
        configureView(house: hogwartsHouse)
    }
    
    // need to calc result
    func calcHogwartsHouse() -> HogwartsHouse {
        let maxMatchCount = max(user.gryffindorMatchCount, user.ravenclawMatchCount, user.hufflepuffMatchCount, user.slytherinMatchCount)

        if maxMatchCount == user.gryffindorMatchCount {
            print("Gryffindor has the greatest number of matches: \(maxMatchCount)")
            return .Gryffindor
        } else if maxMatchCount == user.ravenclawMatchCount {
            print("Ravenclaw has the greatest number of matches: \(maxMatchCount)")
            return .Ravenclaw
        } else if maxMatchCount == user.hufflepuffMatchCount {
            print("Hufflepuff has the greatest number of matches: \(maxMatchCount)")
            return .Hufflepuff
        } else {
            print("Slytherin has the greatest number of matches: \(maxMatchCount)")
            return .Slytherin
        }
    }
    
    // configure result
    func configureView(house: HogwartsHouse) {
        if house == .Gryffindor {
            let red = hexStringToUIColor(hex: "#C1121F")
            self.view.backgroundColor = red
            print(String(describing: view.backgroundColor))
            
            houseLabel.text = "Gryffindor"
        } else if house == .Ravenclaw {
            let blue = hexStringToUIColor(hex: "#00296B")
            self.view.backgroundColor = blue
            
            houseLabel.text = "Ravenclaw"
        } else if house == .Hufflepuff {
            let yellow = hexStringToUIColor(hex: "#FFC60A")
            self.view.backgroundColor = yellow
            
            houseLabel.text = "Hufflepuff"
        } else {
            let green = hexStringToUIColor(hex: "#007200")
            self.view.backgroundColor = green
            
            houseLabel.text = "Slytherin"
        }
    }
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
