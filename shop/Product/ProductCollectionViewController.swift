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
    var titlevare = ""
    let listFishImage = [#imageLiteral(resourceName: "fish2"), #imageLiteral(resourceName: "fish3"), #imageLiteral(resourceName: "fish4"), #imageLiteral(resourceName: "fish")]
    let listMeetImage = [#imageLiteral(resourceName: "meat2"), #imageLiteral(resourceName: "colectionMenu02"), #imageLiteral(resourceName: "meat3"), #imageLiteral(resourceName: "kurica")]


    let imageProduct = [#imageLiteral(resourceName: "meat"), #imageLiteral(resourceName: "colectionMenu01"), #imageLiteral(resourceName: "makarony"), #imageLiteral(resourceName: "caneds"), #imageLiteral(resourceName: "pripravy"), #imageLiteral(resourceName: "produce"), #imageLiteral(resourceName: "yagoda"), #imageLiteral(resourceName: "egg"), #imageLiteral(resourceName: "bread"), #imageLiteral(resourceName: "milc"), #imageLiteral(resourceName: "krupa"), #imageLiteral(resourceName: "fruit")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //title = titlevare

        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
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
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
            vc.listImage = listMeetImage
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
            vc.listImage = listFishImage
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = storyboard?.instantiateViewController(withIdentifier: "index1VC")
            self.navigationController?.pushViewController(vc!, animated: true)
        case 3:
            let vc = storyboard?.instantiateViewController(withIdentifier: "index1VC")
            self.navigationController?.pushViewController(vc!, animated: true)
        
        default:
            break
        }
        collectionView.deselectItem(at: indexPath, animated: true)
        //collectionView.deselectRow(at: indexPath, animated: true)
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
