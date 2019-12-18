import UIKit

class DirectionView: UIView {
    
    lazy var scheduleButton: UIButton = {
        
        let scheduleButton = UIButton()
        Utilities.styleFilledButton(scheduleButton)
        scheduleButton.titleLabel?.text = "Schedules"
        scheduleButton.titleLabel?.textColor = .white
        return scheduleButton
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        addSubview(scheduleButton)
        constrains()
    }
    
    private func constrains() {
        scheduleButton.translatesAutoresizingMaskIntoConstraints = false
        [scheduleButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30), scheduleButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30), scheduleButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30), scheduleButton.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.10)].forEach{ $0.isActive = true }
        
    }

}
