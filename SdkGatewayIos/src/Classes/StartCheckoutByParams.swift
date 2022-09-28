import Foundation


public class StartCheckoutByParams : StartCheckoutSDK {
    override public init(){
        super.init()
    }
    
    public func startPayment(navigationController: UINavigationController) {
        print("StartCheckoutByParams -> startPayment")
        
        super.typeStartCheckoout = TypeStartCheckout.byParams
        
        super.startPaymentInScreen(navigationController: navigationController) //Screen
//        super._startPaymentInModal(navigationController: navigationController) //PopUp
        
    }

    
}
