import UIKit

class DetailedView: UIView {
    
    lazy var backView: UIView = {
       let backView = UIView()
               let color = #colorLiteral(red: 0.7019608021, green: 0.8431372643, blue: 1, alpha: 1)
               backView.backgroundColor = color
               backView.backgroundColor = color.withAlphaComponent(0.5)
               backView.layer.cornerRadius = 10.0
               return backView
    }()
    
    
     lazy var closeButton: UIButton = {
         let closeButton = UIButton()
         let image = UIImage(named: "close")
         closeButton.setImage(image, for: .normal)
         return closeButton
     }()
     
     
     lazy var titleLabel: UILabel = {
         var titleLabel = UILabel()
         titleLabel.text = "Explore the App"
         titleLabel.textAlignment = .center
         titleLabel.font = UIFont(name: "KohinoorTelugu-Regular", size: 20)
         titleLabel.textColor = #colorLiteral(red: 0.1411764706, green: 0.1960784314, blue: 0.3176470588, alpha: 1)
         return titleLabel
     }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func commonInit() {
        addSubview(backView)
        addSubview(closeButton)
        addSubview(titleLabel)
    }
    

}
