//
//  ViewController.swift
//  Sorting Hat
//
//  Created by Kabir Dhillon on 2/26/23.
//

import UIKit
import Lottie

class StartViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    var animationView: LottieAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Lottie Animation
        startAnimation()
        
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
    
    func startAnimation() {
        animationView = .init(name: "7251-wizard-animation-character")
        animationView!.frame = CGRect(x: 0, y: 150, width: 400, height: 400)

        // 3. Set animation content mode
        animationView!.contentMode = .scaleAspectFit
        view.addSubview(animationView!)

        // 4. Set animation loop mode
        animationView!.loopMode = .loop

        // 5. Adjust animation speed
        animationView!.animationSpeed = 0.5

        // 6. Play animation
        animationView!.play()
    }
    
    func stopAnimation() {
        animationView?.stop()
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        stopAnimation()
        if let vc = storyboard?.instantiateViewController(withIdentifier: "sortingCeremony"){
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
    }
    

}

