//
//  MainTableViewController.swift
//  shop
//
//  Created by Артем Валерьевич on 15.02.2018.
//  Copyright © 2018 Артем Валерьевич. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    let productCell = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 85
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 9
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MainTableViewCell
        
        switch indexPath.row {
        case 0:
            cell.nameLabel.text = "АКЦИИ!!!"
            cell.backgroundColor = #colorLiteral(red: 0.8319465727, green: 0.4360927715, blue: 0.08587298139, alpha: 1)
            cell.nameLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            cell.nameLabel.font = cell.nameLabel.font.withSize(30)
            
            
        case 1:
            cell.nameLabel.text = "Продуктовый отдел"
            cell.backgroundColor = #colorLiteral(red: 0.9379758883, green: 0.8684338881, blue: 0.2762670479, alpha: 1)

        case 2:
            cell.nameLabel.text = "Все для дома"
            cell.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        case 3:
            cell.nameLabel.text = "Канцтовары"
            cell.backgroundColor = #colorLiteral(red: 0.9379758883, green: 0.8684338881, blue: 0.2762670479, alpha: 1)

        case 4:
            cell.nameLabel.text = "Постельное белье"
            cell.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)

        case 5:
            cell.nameLabel.text = "Питание для животных"
            cell.backgroundColor = #colorLiteral(red: 0.9379758883, green: 0.8684338881, blue: 0.2762670479, alpha: 1)

        case 6:
            cell.nameLabel.text = "Наши магазины"
            cell.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)

        case 7:
            cell.nameLabel.text = "Информация"
            cell.backgroundColor = #colorLiteral(red: 0.9379758883, green: 0.8684338881, blue: 0.2762670479, alpha: 1)

        case 8:
            cell.nameLabel.text = "Контакты"
            cell.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)

        default:
            break
        }
        

        return cell
    }
    
   
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = storyboard?.instantiateViewController(withIdentifier: "index1VC")
            self.navigationController?.pushViewController(vc!, animated: true)
        case 1:
            let vc = storyboard?.instantiateViewController(withIdentifier: "index2VC") as! ProductCollectionViewController
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = storyboard?.instantiateViewController(withIdentifier: "index1VC")
            self.navigationController?.pushViewController(vc!, animated: true)
        case 3:
            let vc = storyboard?.instantiateViewController(withIdentifier: "index1VC")
            self.navigationController?.pushViewController(vc!, animated: true)
        case 4:
            let vc = storyboard?.instantiateViewController(withIdentifier: "index1VC")
            self.navigationController?.pushViewController(vc!, animated: true)
        case 5:
            let vc = storyboard?.instantiateViewController(withIdentifier: "index1VC")
            self.navigationController?.pushViewController(vc!, animated: true)
        case 6:
            let vc = storyboard?.instantiateViewController(withIdentifier: "index1VC")
            self.navigationController?.pushViewController(vc!, animated: true)
        case 7:
            let vc = storyboard?.instantiateViewController(withIdentifier: "index1VC")
            self.navigationController?.pushViewController(vc!, animated: true)
        case 8:
            let vc = storyboard?.instantiateViewController(withIdentifier: "index1VC")
            self.navigationController?.pushViewController(vc!, animated: true)
        default:
            break
        }
       
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

}
