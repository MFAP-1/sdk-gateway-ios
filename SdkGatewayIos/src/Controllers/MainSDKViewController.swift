import UIKit

enum TypeStartCheckout {
    case byParams
    case byUrl
}

class MainSDKViewController: UIViewController {
    var typeStartCheckout : TypeStartCheckout? = nil
    var loadingView : LoadingView!
    
    @IBOutlet weak var buttonCloseSDK: UIButton!
    @IBOutlet weak var labelTypeStartCheckout: UILabel!
    private var dispatchLoading: DispatchWorkItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadLoadingView()
        
        if let myNavigationController = navigationController {
            myNavigationController.navigationBar.isHidden = true
        }
        
        dispatchLoading = DispatchWorkItem { [weak self] in
            self?.hideLoadingView()
        }
        
        //fake timer loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: dispatchLoading!)
        
        switch typeStartCheckout {
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
        loadingView = LoadingView()
        loadingView.loadingLabel.text = "checking_data".localized
        self.view.addSubview(loadingView)
        loadingView.frame = self.view.bounds
    }
    
    func hideLoadingView(){
        loadingView?.removeFromSuperview()
    }

    
    @IBAction func CloseSDK(_ sender: UIButton) {
        if let myNavigationController = navigationController {
            myNavigationController.popViewController(animated: true)
        } else {
            dismiss(animated: true)
        }
    }
    
}
