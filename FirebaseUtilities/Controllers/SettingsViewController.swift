import UIKit
import Firebase
import FirebaseAuth


class SettingsViewController: UIViewController {
    
    let signOutView = SeetingsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(signOutView)
        view.backgroundColor = .white
        navigationSetUp()
    }
    
    func navigationSetUp() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
                    let attrs = [NSAttributedString.Key.foregroundColor: UIColor.red, NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 24)!]
                    UINavigationBar.appearance().titleTextAttributes = attrs
                    navigationItem.title = "Settings"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "sign out", style: .done, target: self, action: #selector(signoutFromFirebase))
    }
    
    @objc func signoutFromFirebase() {
        print("fucking work!")
//      try! Auth.auth().signOut()
//
//        if let storyboard = self.storyboard {
//            let vc = storyboard.instantiateViewController(withIdentifier: "\(Constants.Storyboard.startingVC)") as! InitialViewController
//                    self.present(vc, animated: false, completion: nil)
//                }
        
    }
    
    

   

}
