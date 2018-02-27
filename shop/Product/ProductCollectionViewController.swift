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
    
    let colectionProduct1 = [#imageLiteral(resourceName: "image5"), #imageLiteral(resourceName: "image1"), #imageLiteral(resourceName: "Menu_image2"), #imageLiteral(resourceName: "image4")]
    let colectionName1 = ["Лопатка свиная Черкизово охлажденная", "Ассорти", "Мякоть лопатки мраморная говядина без кости", "Лопатка баранья на кости"]
    let colectionInfo1 = ["""
ОАО "Черкизовский мясоперерабатывающий­ завод", Россия.
        Лопатка свиная Черкизово охлажденная.
        Полуфабрикат мясной натуральный крупнокусковой бескостный из свинины
        категории А.
""", """
""", """
ООО "Брянская мясная компания".
Говядина мякоть лопатки мраморная без кости Мираторг охлажденная.
Полуфабрикат мясной из говядины крупнокусковой бескостный категории
""", """
ООО "Оптимум".
Лопатка Эколь баранья на кости Халяль охлажденная в ГЗС.
Способ приготовления: варить, жарить, тушить или запекать до полной
готовности.
"""]
    let colectionType1 = ["кг", "кг", "кг", "кг"]
    let colectionSum1 = [249, 380, 290, 399]
    let colectionProduct2 = [#imageLiteral(resourceName: "image6"), #imageLiteral(resourceName: "image8"), #imageLiteral(resourceName: "image9"), #imageLiteral(resourceName: "image9")]
    let colectionName2 = ["", "", "", ""]
    let colectionInfo2 = ["", "", "", ""]
    let colectionType2 = ["", "", "", ""]
    let colectionSum2 = [1, 1, 1, 1]
    let colectionProduct3 = [#imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15")]
    let colectionName3 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionInfo3 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionType3 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionSum3 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    let colectionProduct4 = [#imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15")]
    let colectionName4 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionInfo4 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionType4 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionSum4 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    let colectionProduct5 = [#imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15")]
    let colectionName5 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionInfo5 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionType5 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionSum5 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    let colectionProduct6 = [#imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15")]
    let colectionName6 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionInfo6 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionType6 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionSum6 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    let colectionProduct7 = [#imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15")]
    let colectionName7 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionInfo7 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionType7 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionSum7 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    let colectionProduct8 = [#imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15")]
    let colectionName8 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionInfo8 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionType8 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionSum8 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    let colectionProduct9 = [#imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15")]
    let colectionName9 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionInfo9 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionType9 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionSum9 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    let colectionProduct10 = [#imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image15")]
    let colectionName10 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionInfo10 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionType10 = ["", "", "", "", "", "", "", "", "", ""]
    let colectionSum10 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    
    
    
    
    let imageProduct = [#imageLiteral(resourceName: "Menu_image2"), #imageLiteral(resourceName: "Menu_image7"), #imageLiteral(resourceName: "Menu_image20"), #imageLiteral(resourceName: "Menu_image10"), #imageLiteral(resourceName: "Menu_image19"), #imageLiteral(resourceName: "Menu_image14"), #imageLiteral(resourceName: "Menu_image18"), #imageLiteral(resourceName: "Menu_image15"), #imageLiteral(resourceName: "Menu_image16"), #imageLiteral(resourceName: "Menu_image17")]
    let nameProduct = ["Мясо", "Рыба", "Овощи", "Фрукты", "Консервы", "Макароны", "Приправы", "Хлеб", "Молоко", "Яйцо"]
    var product: [ProductListStruct] = [
        ProductListStruct(name: "", sum: 1, image: "Menu_image15.JPG", type: "", detailProduct: "123")]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageProduct.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCollectionViewCell
        
        cell.imageProduct.image = imageProduct[indexPath.row]
        cell.nameProduct.text = nameProduct[indexPath.row]
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
            vc.listImage = colectionProduct1
            vc.listName = colectionName1
            vc.listInfo = colectionInfo1
            vc.listType = colectionType1
            vc.listSum = colectionSum1
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
            vc.listImage = colectionProduct2
            vc.listName = colectionName2
            vc.listInfo = colectionInfo2
            vc.listType = colectionType2
            vc.listSum = colectionSum2
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
            vc.listImage = colectionProduct3
            vc.listName = colectionName3
            vc.listInfo = colectionInfo3
            vc.listType = colectionType3
            vc.listSum = colectionSum3
            self.navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
            vc.listImage = colectionProduct4
            vc.listName = colectionName4
            vc.listInfo = colectionInfo4
            vc.listType = colectionType4
            vc.listSum = colectionSum4
            self.navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
            vc.listImage = colectionProduct5
            vc.listName = colectionName5
            vc.listInfo = colectionInfo5
            vc.listType = colectionType5
            vc.listSum = colectionSum5
            self.navigationController?.pushViewController(vc, animated: true)
        case 5:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
            vc.listImage = colectionProduct6
            vc.listName = colectionName6
            vc.listInfo = colectionInfo6
            vc.listType = colectionType6
            vc.listSum = colectionSum6
            self.navigationController?.pushViewController(vc, animated: true)
        case 6:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
            vc.listImage = colectionProduct7
            vc.listName = colectionName7
            vc.listInfo = colectionInfo7
            vc.listType = colectionType7
            vc.listSum = colectionSum7
            self.navigationController?.pushViewController(vc, animated: true)
        case 7:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
            vc.listImage = colectionProduct8
            vc.listName = colectionName8
            vc.listInfo = colectionInfo8
            vc.listType = colectionType8
            vc.listSum = colectionSum8
            self.navigationController?.pushViewController(vc, animated: true)
        case 8:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
            vc.listImage = colectionProduct9
            vc.listName = colectionName9
            vc.listInfo = colectionInfo9
            vc.listType = colectionType9
            vc.listSum = colectionSum9
            self.navigationController?.pushViewController(vc, animated: true)
        case 9:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ListProductVC") as! ListProductCollectionViewController
            vc.listImage = colectionProduct10
            vc.listName = colectionName10
            vc.listInfo = colectionInfo10
            vc.listType = colectionType10
            vc.listSum = colectionSum10
            self.navigationController?.pushViewController(vc, animated: true)
        
        default:
            break
        }
        collectionView.deselectItem(at: indexPath, animated: true)
    }

}
