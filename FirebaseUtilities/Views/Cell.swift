//
//  TasksCell.swift
//  Pre-Thanksgiving-Review
//
//  Created by Olimpia on 11/21/19.
//  Copyright © 2019 Olimpia. All rights reserved.
//

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
        [taskLabel.centerXAnchor.constraint(equalTo: centerXAnchor), taskLabel.centerYAnchor.constraint(equalTo: centerYAnchor)].forEach{ $0.isActive = true }

    }

}
