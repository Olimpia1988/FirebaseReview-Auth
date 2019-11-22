import UIKit

class MainView: UIView {

    
      lazy var tableView: UITableView = {
         let cell = UITableView()
         cell.frame = bounds
        cell.register(TasksCell.self, forCellReuseIdentifier: "taskCell")
         return cell
     }()
    
    override init(frame: CGRect) {
           super.init(frame: UIScreen.main.bounds)
           commonInit()
           
       }
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           commonInit()
       }
    
    private func commonInit() {
        viewSetup()
    }
    
    private func viewSetup() {
        addSubview(tableView)
    }
    
    


}
