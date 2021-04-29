import UIKit
import Lottie

class DownloadLottieVC: UIViewController
{
    @IBOutlet weak var progressAnimation: AnimationView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        progressAnimation.loopMode = .loop
        progressAnimation.play()
    }
    
    @IBAction func backPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "MainLottieVC") as! MainLottieVC
        UIApplication.shared.windows[0].rootViewController = vc
    }
}
