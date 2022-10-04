import UIKit
import SdkGatewayIos

class ViewController: UIViewController {

    
    @IBAction func clickBtnStartCheckoutByParams(_ sender: Any) {
        let startCheckout = StartCheckoutByParams()
        startCheckout.setLanguage("pt")

        if let myNavigationController = navigationController {
            startCheckout.startPayment(navigationController: myNavigationController )
        }
    }

    @IBAction func clickBtnStartCheckoutByUrl(_ sender: Any) {
        let startCheckout = StartCheckoutByUrl()
        startCheckout.setLanguage("en")
        if let myNavigationController = navigationController {
            startCheckout.startPayment(navigationController: myNavigationController )
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if let myNavigationController = navigationController {
            myNavigationController.navigationBar.isHidden = true
        }
//        view.backgroundColor = .systemGreen
    }
    
}

