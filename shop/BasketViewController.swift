//
//  BasketViewController.swift
//  shop
//
//  Created by Артем Валерьевич on 21.02.2018.
//  Copyright © 2018 Артем Валерьевич. All rights reserved.
//

import UIKit

class BasketViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    struct Basket {
        let name: String
        let productInfo: String
        let sumProduct: String
        let image: UIImage
        
        init(name: String, productInfo: String, sumProduct: String, image: UIImage) {
            self.name = name
            self.productInfo = productInfo
            self.sumProduct = sumProduct
            self.image = image
        }
    }
    
    var basket = [Basket]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basket.count
    }
    
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! BasketTableViewCell
        
        let indexProduct = basket[indexPath.row]
        
        cell.imageBasket.image = nil
        
        
        return cell
    }

}
