import UIKit
import SdkGatewayIos

class ViewController: UIViewController {

    @IBOutlet weak var btnStartCheckoutByParams: UIButton!
    @IBOutlet weak var btnStartCheckoutByUrl: UIButton!
    
    
    @IBAction func clickBtnStartCheckoutByParams(_ sender: Any) {
        let startCheckout = StartCheckoutByParams()
        startCheckout.setLanguage("en")
        
        if let myNavigationController = navigationController {
            startCheckout.startPayment(navigationController: myNavigationController )
        }
    }
    
    @IBAction func clickBtnStartCheckoutByUrl(_ sender: Any) {
        let startCheckout = StartCheckoutByUrl()
        startCheckout.setLanguage("es")
        if let myNavigationController = navigationController {
            startCheckout.startPayment(navigationController: myNavigationController )
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .systemGreen
    }
    
}

