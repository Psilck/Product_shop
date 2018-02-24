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
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basket.count
    }
    
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! BasketTableViewCell
        
        let indexProduct = basket[indexPath.row]
        cell.infoProductBasket.text = indexProduct.productInfo
        cell.sumProductBasket.text = String(indexProduct.sumProduct)
        
        
        let per = indexProduct.sumProduct
        sumIndexProduct = [Int(per)]
        
        
        
        for (_, sum) in sumIndexProduct.enumerated() {
            totall += Int(truncating: sum as NSNumber)
            print(totall)
        }
        summIndex = totall
        totalSumProduct.text = String(summIndex)
        
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
            totall = 0
            
            
        }
    }

    @IBAction func completedProductBasket(_ sender: UIButton) {
    }
}
