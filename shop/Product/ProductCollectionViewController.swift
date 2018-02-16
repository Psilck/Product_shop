//
//  ProductCollectionViewController.swift
//  shop
//
//  Created by Артем Валерьевич on 15.02.2018.
//  Copyright © 2018 Артем Валерьевич. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ProductCollectionViewController: UICollectionViewController {
    var titleName = ""
    
    
    let imageProduct = [#imageLiteral(resourceName: "meat"), #imageLiteral(resourceName: "colectionMenu01"), #imageLiteral(resourceName: "makarony"), #imageLiteral(resourceName: "caneds"), #imageLiteral(resourceName: "pripravy"), #imageLiteral(resourceName: "produce"), #imageLiteral(resourceName: "yagoda"), #imageLiteral(resourceName: "egg"), #imageLiteral(resourceName: "bread"), #imageLiteral(resourceName: "milc"), #imageLiteral(resourceName: "krupa"), #imageLiteral(resourceName: "fruit")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = titleName

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageProduct.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCollectionViewCell
    
        switch indexPath.row {
        case 0:
            cell.imageProduct.image = imageProduct[indexPath.row]
        case 1:
            cell.imageProduct.image = imageProduct[indexPath.row]
        case 2:
            cell.imageProduct.image = imageProduct[indexPath.row]
        case 3:
            cell.imageProduct.image = imageProduct[indexPath.row]
        case 4:
            cell.imageProduct.image = imageProduct[indexPath.row]
        case 5:
            cell.imageProduct.image = imageProduct[indexPath.row]
        case 6:
            cell.imageProduct.image = imageProduct[indexPath.row]
        case 7:
            cell.imageProduct.image = imageProduct[indexPath.row]
        case 8:
            cell.imageProduct.image = imageProduct[indexPath.row]
        case 9:
            cell.imageProduct.image = imageProduct[indexPath.row]
        case 10:
            cell.imageProduct.image = imageProduct[indexPath.row]
        case 11:
            cell.imageProduct.image = imageProduct[indexPath.row]
        default:
            break
        }
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
