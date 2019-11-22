import UIKit

class TasksCell: UITableViewCell {
    
    
    lazy var taskLabel: UILabel = {
       let taskLabel = UILabel()
        return taskLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(taskLabel)
        setConstrains()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstrains() {
        taskLabel.translatesAutoresizingMaskIntoConstraints = false
        [taskLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30), taskLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -11), taskLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 11), taskLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -11) ].forEach{ $0.isActive = true }

    }

}
