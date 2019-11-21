import UIKit
import FirebaseAuth
import AVFoundation



class ViewController: UIViewController {
    
    //MARK: Properties
    var videoLayer: AVPlayerLayer?
    var videoPlayer: AVPlayer?
  
    

   //MARK: Outlets
 
    @IBOutlet weak var singUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setUpVideo()
    }
    
    @IBAction func signupAction(_ sender: Any) {
    }
    
    @IBAction func loginAction(_ sender: Any) {
    }
    
    private func initialSetup() {
        Utilities.styleFilledButton(singUpButton)
        Utilities.styleHollowButton(loginButton)
        
    }
    
    func setUpVideo() {
        //get the path to the resouce in the bundle
       let path = Bundle.main.path(forResource: "login", ofType: "mp4")
        guard path != nil else {
            return
        }
        let url = URL(fileURLWithPath: path!)
        
        //create the video player item
        let item = AVPlayerItem(url: url)
        
        //Create the player
        videoPlayer = AVPlayer(playerItem: item)
        
        //Create the layer
        videoLayer = AVPlayerLayer(player: videoPlayer!)
        
        //Adjust the size of the frame
        videoLayer?.frame = CGRect(x: -self.view.frame.size.width*1.5, y: 0, width: self.view.frame.size.width*4, height: self.view.frame.height)
        view.layer.insertSublayer(videoLayer!, at: 0)
    }


}

extension ViewController: UITextFieldDelegate {
    
    
}
