import UIKit

class MainView: UIView {

    
      lazy var tableView: UITableView = {
         let tableView = UITableView()
         tableView.frame = bounds
        
        tableView.register(TasksCell.self, forCellReuseIdentifier: "taskCell")
        
         return tableView
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
