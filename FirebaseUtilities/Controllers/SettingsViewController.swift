import UIKit


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
//              navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(settingsVC))
    }
    

   

}
