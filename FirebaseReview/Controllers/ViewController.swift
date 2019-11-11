import UIKit
import FirebaseAuth



class ViewController: UIViewController {
    
    //MARK: Properties
  
    

   //MARK: Outlets
 
    @IBOutlet weak var singUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
       
    }
    
    @IBAction func signupAction(_ sender: Any) {
    }
    
    @IBAction func loginAction(_ sender: Any) {
    }
    
    private func initialSetup() {
        Utilities.styleFilledButton(singUpButton)
        Utilities.styleHollowButton(loginButton)
        
    }


}

extension ViewController: UITextFieldDelegate {
    
    
}
