import UIKit

class HomeViewController: UIViewController {
 
    let tableView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        delegatesAndAddedViews()
       
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
