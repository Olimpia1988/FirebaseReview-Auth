import UIKit

class SeetingsView: UIView {

    lazy var signOutButton: UIButton = {
        let signButton = UIButton()
        signButton.titleLabel?.text = "Sign Out"
        signButton.titleLabel?.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return signButton
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        comminInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func comminInit() {
        addSubview(signOutButton)
        constaninsSetup()
    }
    
    func constaninsSetup() {
        signOutButton.translatesAutoresizingMaskIntoConstraints = false
        [signOutButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor), signOutButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)].forEach{ $0.isActive = true }
    }
    

}
