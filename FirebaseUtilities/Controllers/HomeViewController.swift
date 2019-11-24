import UIKit
import RHSideButtons

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
        navigationItem.title = "Tasks"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(settingsVC))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage.init(named: "moreOptions"), style: .plain, target: self, action: #selector(setupButtonTasks))
    }
    
    @objc func setupButtonTasks() {
        print("here I call the button actions")
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
    
    
//    let triggerButton = RHTriggerButtonView(pressedImage: UIImage(named: "exit_icon")!) {
//        $0.image = UIImage(named: "more")
//        $0.hasShadow = true
//    }
    
//    sideButtonsView = RHSideButtons(parentView: view, triggerButton: triggerButton)
//    sideButtonsView.delegate = self
//    sideButtonsView.dataSource = self
    
    
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


