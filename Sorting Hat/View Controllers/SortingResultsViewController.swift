//
//  SortingResultsViewController.swift
//  Sorting Hat
//
//  Created by Kabir Dhillon on 2/26/23.
//

import UIKit

class SortingResultsViewController: UIViewController {
    
    var hogwartsHouse: HogwartsHouse!
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var houseLabel: UILabel!
    
    @IBOutlet weak var learnMoreButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView(house: hogwartsHouse)
        
        defaults.set(hogwartsHouse.rawValue, forKey: "house")
    }
    
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
    
    
    @IBAction func learnMoreTapped(_ sender: UIButton) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "learnMore") as? HouseInfoWebViewController{
            vc.hogwartsHouse = hogwartsHouse
            vc.modalPresentationStyle = .popover
            present(vc, animated: true)
        }
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        defaults.removeObject(forKey: "house")
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "start") as? StartViewController{
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }
    }
}
