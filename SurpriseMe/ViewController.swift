//
//  ViewController.swift
//  SurpriseMe
//
//  Created by Yossi Appo on 08/07/2019.
//  Copyright © 2019 Surprise. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    

    @IBAction func register(_ sender: UIButton) {
        let popUpOverVC = UIStoryboard(name: "Register", bundle: nil).instantiateViewController(withIdentifier:"registerPopUp") as! RegisterViewController
        self.addChild(popUpOverVC)
        popUpOverVC.view.frame = self.view.frame
        self.view.addSubview(popUpOverVC.view)
        popUpOverVC.didMove(toParent: self)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground(self.view , imageName: "pure-blue-sky")
            }

    
}

func setBackground(_ view: UIView , imageName: String){
    let backgroundImageView = UIImageView()
    
    view.addSubview(backgroundImageView)
    backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
    backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    backgroundImageView.image = UIImage.init(named: imageName)
    view.sendSubviewToBack(backgroundImageView)
}
