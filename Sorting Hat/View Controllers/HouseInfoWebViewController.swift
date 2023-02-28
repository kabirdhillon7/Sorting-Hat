//
//  HouseInfoWebViewController.swift
//  Sorting Hat
//
//  Created by Kabir Dhillon on 2/27/23.
//

import UIKit
import WebKit

class HouseInfoWebViewController: UIViewController, WKNavigationDelegate {
    
    var hogwartsHouse: HogwartsHouse!
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.navigationDelegate = self
        setWebsite(house: hogwartsHouse)
    }
    
    func setWebsite(house: HogwartsHouse) {
        let urlString: String!
        
        switch house {
        case .Gryffindor:
            urlString = "https://www.wizardingworld.com/collections/gryffindor"
        case .Hufflepuff:
            urlString = "https://www.wizardingworld.com/collections/hufflepuff"
        case .Ravenclaw:
            urlString = "https://www.wizardingworld.com/collections/ravenclaw"
        case .Slytherin:
            urlString = "https://www.wizardingworld.com/collections/slytherin"
        }
        
        guard let url = URL(string: urlString) else { 
            return
        }
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
}
