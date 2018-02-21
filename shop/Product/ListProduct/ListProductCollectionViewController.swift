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
    
        cell.listImage.image = listImage[indexPath.row]
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = storyboard?.instantiateViewController(withIdentifier: "DetailProductVC") as! DetailProductViewController
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
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
          }
    
}
