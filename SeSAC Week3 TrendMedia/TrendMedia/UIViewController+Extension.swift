


import UIKit


extension UIViewController {
    
    func setBackgroundColor() {
        
        view.backgroundColor = .orange
        
    }
    
    func showAlert() {
        
        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "ok", style: .default)
        let cancel = UIAlertAction(title: "cancel", style: .default)
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: true)
        
    }
    
    
    
}
















