import UIKit
import FirebaseFirestore
import Firebase
import FirebaseAuth

class CreatePostVC: UIViewController {
    
    let postView = CreatePostView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(postView)
        view.backgroundColor = .white
        initalSetUp()
    }
    
    func initalSetUp() {
        postView.errorLabel.isHidden = true
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let attrs = [NSAttributedString.Key.foregroundColor: UIColor.red, NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 24)!]
        UINavigationBar.appearance().titleTextAttributes = attrs
        navigationItem.title = "Create a Task"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(postData))
        
    }
    
    
    func validateText() -> Bool {
        
        if postView.titleTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) != "" && postView.descriptionText.text.trimmingCharacters(in: .whitespacesAndNewlines) != "" {
            return true
            
            
        } else {
            showAlert(title: "Error", message: "Please add values to the fields")
            return false
        }
        
        
        
    }
    func showError(_ message: String) {
        postView.errorLabel.isHidden = false
        postView.errorLabel.text = message
        
    }
    
    func transitionBack() {
        showAlert(title: "✔️", message: "You added a task to the list!") { (action) in
            let srb = UIStoryboard(name: "Main", bundle: nil)
            let homeVC = srb.instantiateViewController(identifier: Constants.Storyboard.storyBoardID)
            let navCont = UINavigationController(rootViewController: homeVC)
            self.view.window?.rootViewController = navCont
            self.view.window?.makeKeyAndVisible()
        }
    }
    
    @objc func postData() {
        
        let user = Auth.auth().currentUser
        let errorMessage = validateText()
        
        if user != nil && errorMessage == true {
//            let newTask = Task(title: postView.titleTextField.text!, body: postView.descriptionText.text, creatorID: user!.uid)
            let newTask = Task(title: postView.titleTextField.text!, body: postView.descriptionText.text, creatorID: user!.uid, dateCreated: postView.datePicker.date)
            FirestoreService.manager.createPost(post: newTask) { (result) in
                self.transitionBack()
            }
            
            
            
        } else {
            showError("Please add values to the fields")
        }
        
    }
    
}
