//
//  SecondTableViewController.swift
//  SeSAC Week3 TrendMedia
//
//  Created by 이명진 on 2022/07/18.
//

import UIKit


enum SettingOptions: CaseIterable {
    case total, personal, others
    
    var mainOptions: String {
        switch self {
        case .total:
            return "전체 설정"
        case .personal:
            return "개인 설정"
        case .others:
            return "기타"
        }
        
    }
    
    var rowTitle: [String] {
        switch self {
        case .total:
            return ["공지사항", "실험실", "버전 정보"]
        case .personal:
            return ["개인/보안", "알림", "채팅", "멀티프로필"]
        case .others:
            return ["고객센터/도움말"]
        }
    }
    
}

class SecondTableViewController: UITableViewController {
    
    struct Setting {
        var title: String
        
    }
    
    var generalSetting: [Setting] = [Setting(title: "공지사항"), Setting(title: "실험실"), Setting(title: "버전 정보")]
    
    var privateSetting: [Setting] = [Setting(title: "개인/보안"), Setting(title: "알림"), Setting(title: "채팅"), Setting(title: "멀티프로필")]
    
    var etc: [Setting] = [Setting(title: "고객센터/도움말")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "설정"

    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return SettingOptions.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0 {
//            return generalSetting.count
//        } else if section == 1 {
//            return privateSetting.count
//        } else if section == 2 {
//            return etc.count
//        } else {
//            return 0
//        }
        return SettingOptions.allCases[section].rowTitle.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SesacCell")!
        
//        if indexPath.section == 0 {
//            cell.textLabel?.text = generalSetting.map { $0.title }[indexPath.row]
//            cell.textLabel?.font = .systemFont(ofSize: 13)
//            //generalSetting[indexPath.row].title
//        } else if indexPath.section == 1 {
//            cell.textLabel?.text = privateSetting.map { $0.title }[indexPath.row]
//            cell.textLabel?.font = .systemFont(ofSize: 13)
//            //privateSetting[indexPath.row].title
//        } else {
//            cell.textLabel?.text = etc.map { $0.title }[indexPath.row]
//            cell.textLabel?.font = .systemFont(ofSize: 13)
//            //etc[indexPath.row].title
//        }
        cell.textLabel?.text = SettingOptions.allCases[indexPath.section].rowTitle[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
//        if section == 0 {
//            return "전체 설정"
//        } else if section == 1 {
//            return "개인 설정"
//        } else if section == 2 {
//            return "기타"
//        } else {
//            return nil
//        }
        return SettingOptions.allCases[section].mainOptions
    }
    
    
    
    
    

}




