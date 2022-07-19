//
//  ShoppingTableViewController.swift
//  SeSAC Week3 TrendMedia
//
//  Created by 이명진 on 2022/07/19.
//

import UIKit

enum ShoppingList: Int, CaseIterable {
    case purchase, haveToBuy, soldOut
    
    var title: String {
        switch self {
        case .purchase:
            return "구입한 물건"
        case .haveToBuy:
            return "사야할 물건"
        case .soldOut:
            return "품절된 물건"
        }
    }
    
    var shoppingList: [String] {
        switch self {
        case .purchase:
            return ["양파", "삼겹살", "수건", "수박"]
        case .haveToBuy:
            return ["반바지", "양말", "고추장"]
        case .soldOut:
            return ["케익"]
        }
    }

}


class ShoppingTableViewController: UITableViewController {
    
   
    @IBOutlet weak var mainTextField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    var purchaseList: [ShoppingListSetting] = [
        ShoppingListSetting(product: "양파", checkBox: UIImage(systemName: "checkmark.square.fill"), bookMark: UIImage(systemName: "star")),
        ShoppingListSetting(product: "삼겹살", checkBox: UIImage(systemName: "checkmark.square.fill"), bookMark: UIImage(systemName: "star")),
        ShoppingListSetting(product: "수건", checkBox: UIImage(systemName: "checkmark.square.fill"), bookMark: UIImage(systemName: "star")),
        ShoppingListSetting(product: "수박", checkBox: UIImage(systemName: "checkmark.square.fill"), bookMark: UIImage(systemName: "star"))
    ]
    
    var haveToButList: [ShoppingListSetting] = [
        ShoppingListSetting(product: "반바지", checkBox: UIImage(systemName: "checkmark.square"), bookMark: UIImage(systemName: "star.fill")),
        ShoppingListSetting(product: "양말", checkBox: UIImage(systemName: "checkmark.square"), bookMark: UIImage(systemName: "star.fill")),
        ShoppingListSetting(product: "고추장", checkBox: UIImage(systemName: "checkmark.square"), bookMark: UIImage(systemName: "star.fill")),
        ShoppingListSetting(product: "케익", checkBox: UIImage(systemName: "checkmark.square"), bookMark: UIImage(systemName: "star.fill")),
        ShoppingListSetting(product: "사이다", checkBox: UIImage(systemName: "checkmark.square"), bookMark: UIImage(systemName: "star.fill"))
    ]
    
    var soldoutList: [ShoppingListSetting] = [
        ShoppingListSetting(product: "대파", checkBox: UIImage(systemName: "checkmark.square"), bookMark: UIImage(systemName: "star.fill")),
        ShoppingListSetting(product: "고등어", checkBox: UIImage(systemName: "checkmark.square"), bookMark: UIImage(systemName: "star.fill")),
        ShoppingListSetting(product: "칫솔", checkBox: UIImage(systemName: "checkmark.square"), bookMark: UIImage(systemName: "star.fill")),
        ShoppingListSetting(product: "우유", checkBox: UIImage(systemName: "checkmark.square"), bookMark: UIImage(systemName: "star.fill"))
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "쇼핑"
        tableView.rowHeight = 35
        configureUI()
        mainTextField.setTextField()
        tableView.reloadData()
        
    }
    
    func configureUI() {
        addButton.setTitle("추가", for: .normal)
        addButton.backgroundColor = .systemGray4
        addButton.titleLabel?.font = .systemFont(ofSize: 13)
        addButton.layer.cornerRadius = 10
        addButton.tintColor = .black
        
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return ShoppingList.allCases.count // 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return purchaseList.count
        } else if section == 1 {
            return haveToButList.count
        } else {
            return soldoutList.count
        }
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingCell", for: indexPath) as! ShoppingTableViewCell
        
        cell.bookMarkButton.titleLabel?.font = .systemFont(ofSize: 12)
        cell.checkBoxButton.imageView?.tintColor = .black
        cell.bookMarkButton.imageView?.tintColor = .black
        cell.backgroundColor = .systemGray6
        
        
        if indexPath.section == 0 {
            cell.itemLabel.text = purchaseList[indexPath.row].product
            cell.checkBoxButton.setImage(purchaseList[indexPath.row].checkBox, for: .normal)
            cell.bookMarkButton.setImage(purchaseList[indexPath.row].bookMark, for: .normal)
        } else if indexPath.section == 1 {
            cell.itemLabel.text = haveToButList[indexPath.row].product
            cell.checkBoxButton.setImage(haveToButList[indexPath.row].checkBox, for: .normal)
            cell.bookMarkButton.setImage(haveToButList[indexPath.row].bookMark, for: .normal)
        } else {
            cell.itemLabel.text = soldoutList[indexPath.row].product
            cell.checkBoxButton.setImage(soldoutList[indexPath.row].checkBox, for: .normal)
            cell.bookMarkButton.setImage(soldoutList[indexPath.row].bookMark, for: .normal)
        }
        
        
        
        
//
//        cell.backgroundColor = .lightGray
//        cell.itemLabel.text = ShoppingList.allCases[indexPath.section].shoppingList[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ShoppingList.allCases[section].title
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            if indexPath.section == 0 {
                purchaseList.remove(at: indexPath.row)
                tableView.reloadData()
            } else if indexPath.section == 1 {
                haveToButList.remove(at: indexPath.row)
                tableView.reloadData()
            } else {
                soldoutList.remove(at: indexPath.row)
                tableView.reloadData()
            }
            
        }
        
        
    }
    
    @IBAction func textFieldTapped(_ sender: UITextField) {
        if let title = sender.text {
            haveToButList.append(.init(product: title, checkBox: UIImage(systemName: "checkmark.square"), bookMark: UIImage(systemName: "star")))
            tableView.reloadData()
        }
          
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        
        if let title = mainTextField.text {
            haveToButList.append(.init(product: title, checkBox: UIImage(systemName: "checkmark.square"), bookMark: UIImage(systemName: "star")))
            tableView.reloadData()
        }
        
        
    }
    
    
    
                                     

}



