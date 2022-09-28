import UIKit

enum TypeStartCheckout {
    case byParams
    case byUrl
}

class MainSDKViewController: UIViewController {
    var typeStartCheckoout : TypeStartCheckout? = nil
    
    @IBOutlet weak var buttonCloseSDK: UIButton!
    @IBOutlet weak var labelTypeStartCheckout: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch typeStartCheckoout {
            case .byUrl:
                labelTypeStartCheckout.text = "StartCheckoutByUrl"
            case .byParams:
                labelTypeStartCheckout.text = "StartCheckoutByParams"
            case .none:
                break
        }
        
    }
    
    //Function to test load customView
    func loadLoadingView(){
        let loadingView = LoadingView()
        loadingView.loadingLabel.text = "Carregando transação"
        self.view.addSubview(loadingView)
        loadingView.frame = self.view.bounds
    }

    
    @IBAction func CloseSDK(_ sender: UIButton) {
        if let myNavigationController = navigationController {
            myNavigationController.popViewController(animated: true)
        } else {
            dismiss(animated: true)
        }
    }
    
}
