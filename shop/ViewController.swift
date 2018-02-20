//
//  ViewController.swift
//  shop
//
//  Created by Артем Валерьевич on 15.02.2018.
//  Copyright © 2018 Артем Валерьевич. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var textViewTest = UITextView()

    @IBOutlet weak var labelTest: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        textViewTest.frame = CGRect(x: 150, y: 200, width: 150, height: 20)
        view.addSubview(textViewTest)
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func leftButton(_ sender: UIButton) {
        
        
    }
    @IBAction func rightButton(_ sender: UIButton) {
    }
    
}

