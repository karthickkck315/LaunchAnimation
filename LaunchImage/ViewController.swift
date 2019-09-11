//
//  ViewController.swift
//  LaunchImage
//
//  Created by Apple on 20/08/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        
        let logoImage = UIImageView()
        logoImage.frame = CGRect(x: 20, y: self.view.frame.size.height/2 - 100, width: screenWidth - 40, height: 200)
        logoImage.backgroundColor = .red
        logoImage.image = UIImage.init(named: "OngoleCow.jpg")
        self.view.addSubview(logoImage)
       
        UIView.animate(withDuration: 0.5, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            // HERE
            ///logoImage.transform = CGAffineTransform.identity.scaledBy(x: 2, y: 2) // Scale your image
            logoImage.transform = CGAffineTransform.identity.scaledBy(x: 0.1, y: 0.1)
        }) { (finished) in
            UIView.animate(withDuration: 1, animations: {
                logoImage.transform = CGAffineTransform.identity.scaledBy(x: 1.0, y: 1.0)
            })
//            UIView.animate(withDuration: 1, animations: {
//                logoImage.transform = CGAffineTransform.identity.scaledBy(x: 0.0, y: 0.0)
//                //logoImage.transform = CGAffineTransform.identity // undo in 1 seconds
//            })
        }
        
        let groceryImage = UIImageView()
        groceryImage.frame = CGRect(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2, width: 0, height: 0)
        groceryImage.backgroundColor = .red
        self.view.addSubview(groceryImage)
        
        let restaurantImage = UIImageView()
        restaurantImage.frame = CGRect(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2, width: 00, height: 0)
        restaurantImage.backgroundColor = .green
        self.view.addSubview(restaurantImage)
        
        let laundryImage = UIImageView()
        laundryImage.frame = CGRect(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2, width: 00, height: 0)
        laundryImage.backgroundColor = .yellow
        self.view.addSubview(laundryImage)
        
        let othersImage = UIImageView()
        othersImage.frame = CGRect(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2, width: 0, height: 0)
        othersImage.backgroundColor = .cyan
        self.view.addSubview(othersImage)
        
        
       
        
        UIView.animate(withDuration: 5) {
            groceryImage.frame = CGRect(x: (screenWidth/4)/2 - 25, y: screenHeight - 100, width: 50, height: 50)
            restaurantImage.frame = CGRect(x:screenWidth/2 - 75 , y: screenHeight - 100, width: 50, height: 50)
            laundryImage.frame = CGRect(x: screenWidth/2 + 25, y: screenHeight - 100, width: 50, height: 50)
            othersImage.frame = CGRect(x: screenWidth - ((screenWidth/4)/2 + 25), y: screenHeight - 100, width: 50, height: 50)
        }
        
        
    }
}

