import Firebase
import FirebaseAuth
import Foundation

class AuthServiceSetUp {
    static let manager = AuthServiceSetUp()
    
    private init() {}
    
    private let auth = Auth.auth()
    
    var currentUSer: User? {
        return auth.currentUser
    }
    

    
}
