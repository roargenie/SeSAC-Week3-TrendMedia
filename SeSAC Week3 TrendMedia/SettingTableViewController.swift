//
//  SettingTableViewController.swift
//  SeSAC Week3 TrendMedia
//
//  Created by 이명진 on 2022/07/18.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    var birthdayFriends: [String] = ["뽀로로", "루피", "올라프", "라이언", "어피치"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "생일인 친구"
        } else if section == 1 {
            return "즐겨찾기"
        } else if section == 2 {
            return "친구"
        } else {
            return "Section"
        }
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "End Of Section"
    }
    
    // 1. 셀의 갯수(필수) : numberOfRowsInSection
    //ex. 카톡 100명 > 셀100개, 3000명 > 셀 3000개
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return birthdayFriends.count
        } else if section == 1 {
            return 2
        } else {
            
            return 10
        }

    }
    // 2. 셀의 디자인과 데이터(필수) : cellForRowAt
    //ex. 카톡 이름, 프로필 사진, 상태 메세지 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        if indexPath.section == 0 {
            cell.textLabel?.text = birthdayFriends[indexPath.row]
            cell.textLabel?.textColor = .green
            cell.textLabel?.font = .boldSystemFont(ofSize: 15)
        } else if indexPath.section == 1 {
            cell.textLabel?.text = "1번 인덱스 텍스트"
            cell.textLabel?.textColor = .yellow
            cell.textLabel?.font = .boldSystemFont(ofSize: 20)
        } else {
            cell.textLabel?.text = "2번 인덱스 텍스트"
            cell.textLabel?.textColor = .brown
            cell.textLabel?.font = .boldSystemFont(ofSize: 25)
        }
        
        
        
        
        return cell
    }
    
    
    

    

    
}
