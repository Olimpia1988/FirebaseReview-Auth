import UIKit

class CreatePostVC: UIViewController {
    
    let postView = CreatePostView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(postView)
        view.backgroundColor = .white
        UISetup()
        
    }
    
    func UISetup() {
        Utilities.styleTextField(postView.titleTextField)
    }
    

   

}
