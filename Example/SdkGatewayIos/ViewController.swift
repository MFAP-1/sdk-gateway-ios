import UIKit
import SdkGatewayIos

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let startCheckout = StartCheckoutByUrl()
        startCheckout.startPayment()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

