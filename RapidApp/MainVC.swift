//
//  MainVC.swift
//  RapidApp
//
//  Created by Kenneth W Jackson on 11/18/18.
//  Copyright © 2018 Connections Digital. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        NotificationCenter.default.addObserver(self, selector: #selector(showWordPress), name: NSNotification.Name("ShowWordPress"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showMap), name: NSNotification.Name("ShowMap"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showContact), name: NSNotification.Name("ShowContact"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showAbout), name: NSNotification.Name("ShowAbout"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showPrivacy), name: NSNotification.Name("ShowPrivacy"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showTOS), name: NSNotification.Name("ShowTOS"), object: nil)
        
    }
    
    @objc func showWordPress() {
        performSegue(withIdentifier: "ShowWordPress", sender: nil)
    }
    
    @objc func showMap() {
        performSegue(withIdentifier: "ShowMap", sender: nil)
    }
    
    @objc func showContact() {
        performSegue(withIdentifier: "ShowContact", sender: nil)
    }
    
    @objc func showAbout() {
        performSegue(withIdentifier: "ShowAbout", sender: nil)
    }
    
    @objc func showPrivacy() {
        performSegue(withIdentifier: "ShowPrivacy", sender: nil)
    }
    
    @objc func showTOS() {
        performSegue(withIdentifier: "ShowTOS", sender: nil)
    }
    
    @IBAction func onMoreTapped() {
        print("Toggle Side Menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)        
    }
}
