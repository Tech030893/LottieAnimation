import UIKit
import Lottie

class MainLottieVC: UIViewController
{
    var animationView : AnimationView?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        animationView = .init(name: "coffee")
        animationView!.frame = view.bounds
        animationView!.contentMode = .scaleAspectFit
        animationView!.loopMode = .loop
        animationView!.animationSpeed = 0.5
        view.addSubview(animationView!)
        animationView!.play()
        view.sendSubviewToBack(animationView!)
    }
    
    @IBAction func downloadBtn(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DownloadLottieVC") as! DownloadLottieVC
        UIApplication.shared.windows[0].rootViewController = vc
    }
}
