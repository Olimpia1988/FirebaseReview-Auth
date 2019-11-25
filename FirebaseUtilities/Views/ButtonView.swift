import UIKit


class ButtonView: UIView {

    lazy var expandableButton: UIButton = {
        let button = UIButton()
       return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(expandableButton)
        constrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func constrains() {
        expandableButton.translatesAutoresizingMaskIntoConstraints = false
        [expandableButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11)].forEach{ $0.isActive = true }
    }
    
}
