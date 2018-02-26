//
//  ListProductCollectionViewController.swift
//  shop
//
//  Created by Артем Валерьевич on 18.02.2018.
//  Copyright © 2018 Артем Валерьевич. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ListProductCollectionViewController: UICollectionViewController {

    var listImage = [UIImage]()
    var listName = [String]()
    var listInfo = [String]()
    var listType = [String]()
    var listSum = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return listImage.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ListProductCollectionViewCell
    
        //let image = listImage["image"]
        cell.listImage.image = listImage[indexPath.row]
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailProductVC") as! DetailProductViewController
        vc.delailImage = listImage[indexPath.row] 
        vc.detailName = listName[indexPath.row]
        vc.detailProductInfo = listInfo[indexPath.row]
        vc.detailType = listType[indexPath.row]
        vc.detailSum = listSum[indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true)
        

        
        collectionView.deselectItem(at: indexPath, animated: true)
          }
    
}
