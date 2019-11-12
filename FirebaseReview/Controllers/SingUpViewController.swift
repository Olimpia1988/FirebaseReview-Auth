import UIKit
import FirebaseAuth
import Firebase

class SingUpViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var signUpLabel: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupElements()
       
    }
    
    func setupElements() {
        errorLabel.isHidden = true
        Utilities.styleTextField(firstName)
        Utilities.styleTextField(lastName)
        Utilities.styleTextField(email)
        Utilities.styleTextField(password)
        Utilities.styleFilledButton(signUpLabel)
    }
    
    func validateFiels() -> String? {
        //check that all fields hold values
        
        if firstName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || lastName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || email.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || password.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all the fields"
        }
        
        let cleanedPassword = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if Utilities.isPasswordValid(cleanedPassword) == false {
            return "Please make sure your password is valid "
        }
        
        return nil
    }
    
    
    @IBAction func signUp(_ sender: Any) {
        
        //validate fields and create the user
        let error = validateFiels()
        
        if error != nil {
            //there's something wrong with the fiels
            showError(error!)
        
        } else {
            
            Auth.auth().createUser(withEmail: <#T##String#>, password: <#T##String#>) { (result, error) in
                if error != nil {
                    
                    self.showError("Error creating user")
                } else {
                 let fs = Firestore.firestore()
                }
            }
        }
        
        
        
      
        
    }
    
    func showError(_ message: String) {
        errorLabel.isHidden = false
        errorLabel.text = message
        
    }
    
   

}
