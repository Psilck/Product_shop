//
//  DetailProductViewController.swift
//  shop
//
//  Created by Артем Валерьевич on 18.02.2018.
//  Copyright © 2018 Артем Валерьевич. All rights reserved.
//

import UIKit

class DetailProductViewController: UIViewController {

    var nameProductDetail = ""
    var detailProductDetail = ""
    var cenaDetail = 301
    var typeDetail = ""
    var imageDelail = UIImage()
    
    
    
    
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var nameDetail: UILabel!
    @IBOutlet weak var detailProduct: UILabel!
    @IBOutlet weak var typeCenaDetail: UILabel!
    @IBOutlet weak var sumDetail: UILabel!
    @IBOutlet weak var typeProduct: UILabel!
    @IBOutlet weak var sumProduct: UILabel!
    @IBOutlet weak var totalSumProduct: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameDetail.text = nameProductDetail
        detailProduct.text = detailProductDetail
        typeProduct.text = typeDetail
        sumProduct.text = String(cenaDetail)
        typeCenaDetail.text = typeDetail
        sumDetail.text = "1"
        totalSumProduct.text = String(cenaDetail)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plusMinus(_ sender: UIStepper) {
        let plus = sender.value
        print(plus)
        let text = String(plus)
        var totalText = text.components(separatedBy: ".")
        sumDetail.text = totalText[0]
        let totalSum = String(cenaDetail * Int(totalText[0])!)
        totalSumProduct.text = totalSum
        print(totalSum)
        
        
    }
    
    
}
