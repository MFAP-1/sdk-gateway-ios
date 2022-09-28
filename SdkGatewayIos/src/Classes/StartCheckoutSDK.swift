import Foundation

public class StartCheckoutSDK {
    var typeStartCheckoout : TypeStartCheckout? = nil
    
    public init(){}
    
    func startPaymentInModal(navigationController: UINavigationController){
        let mainSDKViewController = self.getMainSDKViewController()
        mainSDKViewController.typeStartCheckoout = self.typeStartCheckoout
        navigationController.present(mainSDKViewController, animated: true) //PopUp
    }
    
    func startPaymentInScreen(navigationController: UINavigationController){
        let mainSDKViewController = self.getMainSDKViewController()
        mainSDKViewController.typeStartCheckoout = self.typeStartCheckoout
        navigationController.pushViewController(mainSDKViewController, animated: true)
    }
    
    func getMainSDKViewController() -> MainSDKViewController {
        let storyBoard : UIStoryboard = UIStoryboard(name: "MainSDKController", bundle:nil)
        let mainSDKViewController = storyBoard.instantiateViewController(withIdentifier: "mainSDK") as! MainSDKViewController
        return mainSDKViewController
    }
}
