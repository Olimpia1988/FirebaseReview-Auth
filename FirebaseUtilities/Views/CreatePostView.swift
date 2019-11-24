import UIKit

class CreatePostView: UIView {

    lazy var titleTextField: UITextField = {
       let title = UITextField()
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    func commonInit() {
        addSubview(titleTextField)
        constrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func constrains() {
       titleTextField.translatesAutoresizingMaskIntoConstraints = false
               [titleTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 33), titleTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 66), titleTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -66)].forEach{ $0.isActive = true }
    }

    
  

}
