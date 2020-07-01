import UIKit

class DirectionViewController: UIViewController {
    
    let directionView = DirectionView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(directionView)
        viewsAndDelegationsSetup()
        scheduleAction()

    }
    
    private func viewsAndDelegationsSetup() {
        view.backgroundColor = .white
    }
    
    private func scheduleAction() {
        directionView.scheduleButton.addTarget(self, action: #selector(goToCorrespondingVC), for: .touchUpInside)
    }
    
    @objc func goToCorrespondingVC() {
      let taskVC = HomeViewController()
      self.navigationController?.pushViewController(taskVC, animated: true)
        
    }

  

}
