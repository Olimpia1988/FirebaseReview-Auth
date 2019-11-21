import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

   
    @IBOutlet weak var emailUserTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
      
    }
    
    
    func initialSetup() {
        errorLabel.isHidden = true
        Utilities.styleTextField(emailUserTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(loginButton)
        
    }

    @IBAction func loginAction(_ sender: Any) {
        let email = emailUserTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().signIn(withEmail: email, password: password) { (result , error) in
            if error != nil {
                self.errorLabel.isHidden = false
                self.errorLabel.text = error!.localizedDescription
            } else {
                let homeVC = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.storyBoardID) as? HomeViewController
                self.view.window?.rootViewController = homeVC
                self.view.window?.makeKeyAndVisible()
            }
        }
    }
    

}
