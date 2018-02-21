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

    var nameProductDetail = "123"
    var detailProductDetail = "1234"
    var cenaDetail = 105
    var typeDetail = "kg"
    var imageDelail = #imageLiteral(resourceName: "fish")
    
    
    
    
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
    
    func saveDataCoreData() {
        let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
            //(UIApplication.shared.delegate as? AppDelegate)?.coreDataStack.persistentContainer.viewContext {
        let basketSaveData = BasketProduct(context: context!)
            basketSaveData.name = nameDetail.text
        basketSaveData.productInfo = detailProductDetail
        basketSaveData.sumProduct = Int16(totalSumProduct.text!)!
        if let image = imageDetail.image {
            basketSaveData.image = UIImageJPEGRepresentation(image, 0) as Data?
            //UIImagePNGRepresentation(image) as NSData?
        }
        //= nameTextField.text
//            if let image = imageView.image {
//                restaurant.image = UIImagePNGRepresentation(image) as NSData?
            do {
                try context?.save()
                print("save complete")
            } catch let error as NSError {
                print("Не удалось сохранить данные \(error), \(error.userInfo)")
            }
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
    
    @IBAction func saveDataBasket(_ sender: UIButton) {
        saveDataCoreData()
    }
    
}
