//
//  BasketViewController.swift
//  shop
//
//  Created by Артем Валерьевич on 21.02.2018.
//  Copyright © 2018 Артем Валерьевич. All rights reserved.
//

import UIKit
import CoreData

class BasketViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, NSFetchedResultsControllerDelegate {

    
    
    var fetchResultsController = NSFetchedResultsController<BasketProduct>()
    
    var basket: [BasketProduct] = []
    var sumIndexProduct = [Int]()
    var totall = 0
    var summIndex = 0

    @IBOutlet weak var totalSumProduct: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var noBasket: UIImageView!
    @IBOutlet weak var noBasketLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
        let fethRequest: NSFetchRequest<BasketProduct> = BasketProduct.fetchRequest()
        do {
            basket = (try context?.fetch(fethRequest))!

            
            
            
            
        } catch {
            print(error.localizedDescription)
        }
        totalSumProductLabel()
        noBasket.isHidden = true
        noBasketLabel.isHidden = true
        if basket.count <= 0 {
            tableView.isHidden = true
            noBasket.isHidden = false
            noBasketLabel.isHidden = false
        } else {
            noBasket.isHidden = true
            noBasketLabel.isHidden = true
            return
        }
        
    }
    
   
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return basket.count
    }
    
    func totalSumProductLabel() {
        var sumElement = 0
        var elementArray = [Int]()
        
        // Получаем количество элементов в корзине
        // Добавил условие на проверку количества элементов
        if basket.count == 0 {
            print("break")
        } else {
            for sum in 0..<basket.count {
                sumElement = sum
            }
            
            // Добавляем в массив все суммы продуктов
            for indexElement in 0...sumElement {
                let indexProd = basket[indexElement].sumProduct
                elementArray.append(Int(indexProd))
            }
        }
        // Считаем итоговую сумму
        totall = elementArray.reduce(0, {$0 + $1})
        summIndex = totall
        
        // Присвоение Label общую сумму
        totalSumProduct.text = String(summIndex)
    }
    
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! BasketTableViewCell
        
        let indexProduct = basket[indexPath.row]
        cell.infoProductBasket.text = indexProduct.productInfo
        cell.sumProductBasket.text = String(indexProduct.sumProduct)
        cell.imageBasket.image = UIImage(data: indexProduct.image!)
        cell.scoreProduct.setTitle(indexProduct.coll, for: .normal)
        //indexProduct.image

        
        
        
        return cell
    }
    
    
     // Override to support conditional editing of the table view.
      func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
 
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
        if editingStyle == .delete {

            context?.delete(basket[indexPath.row])
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
            
            do {
                basket = (try context?.fetch(BasketProduct.fetchRequest()))!
            } catch {
                print(error.localizedDescription)
            }
            tableView.reloadData()
            totalSumProductLabel()
            if basket.count <= 0 {
                tableView.isHidden = true
                noBasket.isHidden = false
                noBasketLabel.isHidden = false
            } else {
                noBasket.isHidden = true
                noBasketLabel.isHidden = true
                return
            }
            
            
        }
    }

    @IBAction func completedProductBasket(_ sender: UIButton) {
    }
}
