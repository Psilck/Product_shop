//
//  DetailProductViewController.swift
//  shop
//
//  Created by Артем Валерьевич on 18.02.2018.
//  Copyright © 2018 Артем Валерьевич. All rights reserved.
//

import UIKit
import CoreData

class DetailProductViewController: UIViewController {

    
    
    var detailName = ""
    var detailProductInfo = ""
    var detailSum = 0
    var detailType = ""
    var delailImage = UIImage()
    
    @IBOutlet weak var steperOutlet: UIStepper!
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
        
        steperOutlet.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        steperOutlet.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        imageDetail.image = delailImage
        //steperOutlet
            //= #imageLiteral(resourceName: "fish")
        
        nameDetail.text = detailName
        detailProduct.text = detailProductInfo
        typeProduct.text = detailType
        sumProduct.text = String(detailSum)
        typeCenaDetail.text = detailType
        sumDetail.text = "1"
        totalSumProduct.text = String(detailSum)
        
    }
    
    func saveDataCoreData() {
        let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
        let basketSaveData = BasketProduct(context: context!)
            basketSaveData.name = nameDetail.text
        basketSaveData.productInfo = detailProductInfo
        basketSaveData.sumProduct = Int16(totalSumProduct.text!)!
        basketSaveData.image = UIImagePNGRepresentation(delailImage)
        basketSaveData.coll = sumDetail.text
            do {
                try context?.save()
                print("save complete")
            } catch let error as NSError {
                print("Не удалось сохранить данные \(error), \(error.userInfo)")
            }
        }
    

    @IBAction func plusMinus(_ sender: UIStepper) {
        let plus = sender.value
        print(plus)
        let text = String(plus)
        var totalText = text.components(separatedBy: ".")
        sumDetail.text = totalText[0]
        let totalSum = String(detailSum * Int(totalText[0])!)
        totalSumProduct.text = totalSum
        print(totalSum)
        
        
    }
    
    @IBAction func saveDataBasket(_ sender: UIButton) {
        saveDataCoreData()
    }
    
}
