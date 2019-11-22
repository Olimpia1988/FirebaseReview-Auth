import UIKit

class HomeViewController: UIViewController {
    
    let tableView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegatesAndAddedViews()
        setUpNavBars()
    }
    
    func setUpNavBars() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let attrs = [NSAttributedString.Key.foregroundColor: UIColor.red, NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 24)!]
        UINavigationBar.appearance().titleTextAttributes = attrs
        navigationItem.title = "Test"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(settingsVC))
    }
    
    @objc func settingsVC() {
        let settingsVC = SettingsViewController()
        self.navigationController?.pushViewController(settingsVC, animated: true)
    }
    
    func delegatesAndAddedViews() {
        self.view.addSubview(tableView)
        tableView.tableView.delegate = self
        tableView.tableView.dataSource = self
    }
    
    
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as? TasksCell else { return UITableViewCell() }
        cell.taskLabel.text = "test"
        return cell
    }
    
    
}
