//
//  BasketViewController.swift
//  shop
//
//  Created by Артем Валерьевич on 21.02.2018.
//  Copyright © 2018 Артем Валерьевич. All rights reserved.
//

import UIKit
import CoreData

class BasketViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    var basket: [BasketProduct] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
        //(UIApplication.shared.delegate as? AppDelegate)?.coreDataStack.persistentContainer.viewContext {
        //let listBasketSaveData = BasketProduct(context: context!)
        
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
        
        cell.imageBasket.image = UIImage(data: indexProduct.image! as Data)
        cell.infoProductBasket.text = indexProduct.productInfo
        cell.sumProductBasket.text = String(indexProduct.sumProduct)
        
        
        return cell
    }

}
