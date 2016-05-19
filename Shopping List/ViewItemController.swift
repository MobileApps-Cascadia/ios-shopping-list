//
//  ViewController.swift
//  Shopping List
//
//  Created by Brian Bansenauer on 5/17/16.
//  Copyright © 2016 Brian Bansenauer. All rights reserved.
//

import UIKit

class ViewItemController: UIViewController {

   
    var itemName : String?
    
    @IBOutlet weak var itemImageView: UIImageView!
    
    @IBOutlet weak var itemLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Test if the itemName has a value
        if let myItem = itemName {
        itemImageView?.image = UIImage(named: myItem.lowercaseString)
        itemLabel.text = myItem
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

