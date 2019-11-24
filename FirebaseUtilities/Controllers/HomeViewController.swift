import UIKit
import ExpandingMenu


class HomeViewController: UIViewController {
    
    let tableView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegatesAndAddedViews()
        setUpNavBars()
        expandingButton()
    }
    
    func setUpNavBars() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let attrs = [NSAttributedString.Key.foregroundColor: UIColor.red, NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 24)!]
        UINavigationBar.appearance().titleTextAttributes = attrs
        navigationItem.title = "Tasks"
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(settingsVC))
//        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage.init(named: "moreOptions"), style: .plain, target: self, action: #selector(setupButtonTasks))
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
    
    func expandingButton() {
    
        let menuButtonSize: CGSize = CGSize(width: 50.0, height: 50.0)
        let menuButton = ExpandingMenuButton(frame: CGRect(origin: CGPoint.zero, size: menuButtonSize), image: UIImage(named: "moreOptions")!, rotatedImage: UIImage(named: "moreOptions")!)
        menuButton.center = CGPoint(x: self.view.bounds.width - 32.0, y: self.view.bounds.height - 72.0)
        view.addSubview(menuButton)

        let item1 = ExpandingMenuItem(size: menuButtonSize, title: "My tasks", image: UIImage(named: "myTask")!, highlightedImage: UIImage(named: "myTask")!, backgroundImage: UIImage(named: "myTask"), backgroundHighlightedImage: UIImage(named: "myTask")) { () -> Void in
                    // Do some action
                }

        let item5 = ExpandingMenuItem(size: menuButtonSize, title: "Sort by date", image: UIImage(named: "date")!, highlightedImage: UIImage(named: "date")!, backgroundImage: UIImage(named: "date"), backgroundHighlightedImage: UIImage(named: "date")) { () -> Void in
                    // Do some action
                }
                
        menuButton.addMenuItems([item1, item5])
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


