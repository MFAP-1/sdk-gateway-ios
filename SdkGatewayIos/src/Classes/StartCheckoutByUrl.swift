import Foundation

public class StartCheckoutByUrl : StartCheckoutSDK {
    
    override public init(){
        super.init()
    }
    
    public func startPayment(navigationController: UINavigationController) {
        print("StartCheckoutByUrl -> startPayment")

        super.typeStartCheckout = TypeStartCheckout.byUrl

//        super._startPaymentInScreen(navigationController: navigationController) //Screen
        super.startPaymentInModal(navigationController: navigationController) //PopUp
        
    }
    

}
