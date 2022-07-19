




import UIKit

class BucketListTableViewController: UITableViewController {
    
    @IBOutlet weak var mainTextField: UITextField!
    
    var list = ["범죄도시", "탑건", "토르"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
        
        list.append("마녀")
        
        
        
    }
    
    @IBAction func textFieldTapped(_ sender: UITextField) {
        
        list.append(sender.text!)
        
        // 중요⭐️ 테이블뷰 갱신
        tableView.reloadData()
        //tableView.reloadRows(at: [IndexPath(row: 0, section: 0), IndexPath(row: 2, section: 1)], with: .fade)
        //tableView.reloadSections(IndexSet(integer: <#T##IndexSet.Element#>), with: <#T##UITableView.RowAnimation#>)
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BucketListTableViewCell", for: indexPath) as! BucketListTableViewCell
        
        cell.bucketlistLabel.text = list[indexPath.row]
        cell.bucketlistLabel.font = .boldSystemFont(ofSize: 15)
        
        
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            list.remove(at: indexPath.row)
            tableView.reloadData()
            //tableView.reloadRows(at: [IndexPath(row: indexPath.row, section: 0)], with: .top) 오류남.
        }
        
        
        
    }
 
//    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        <#code#>
//    }
//
//    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        <#code#>
//    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
