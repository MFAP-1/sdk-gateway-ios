import Foundation


public class StartCheckoutByParams : StartCheckoutSDK {
    override public init(){
        super.init()
    }

    
    public func startPayment(navigationController: UINavigationController) {
        navigationController.navigationBar.backItem?.backBarButtonItem?.title = "Voltar"
        
        print("StartCheckoutByParams -> startPayment")
        
        super.typeStartCheckout = TypeStartCheckout.byParams
        
        super.startPaymentInScreen(navigationController: navigationController) //Screen
//        super._startPaymentInModal(navigationController: navigationController) //PopUp
        
    }

    
}
