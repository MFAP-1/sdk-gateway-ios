import Foundation

public class StartCheckoutSDK {
    var typeStartCheckout : TypeStartCheckout? = nil
    
    public init(){
        if let locale = NSLocale.current.languageCode {
            print(locale)
        }
        let pre = Locale.preferredLanguages[0]
        print(pre)
        
        print(Locale.current.languageCode ?? "")
    }
    
    public func setLanguage(_ language : String) {
        // This is done so that network calls now have the Accept-Language as Language.getCurrentLanguage() (Using Alamofire) Check if you can remove these
        UserDefaults.standard.set(language, forKey: "AppleLanguages")
        UserDefaults.standard.synchronize()
        Bundle.setLanguage(language)
    }
    
    func startPaymentInModal(navigationController: UINavigationController){
        let mainSDKViewController = self.getMainSDKViewController()
        mainSDKViewController.typeStartCheckoout = self.typeStartCheckout
        navigationController.present(mainSDKViewController, animated: true) //PopUp
    }
    
    func startPaymentInScreen(navigationController: UINavigationController){
        let mainSDKViewController = self.getMainSDKViewController()
        mainSDKViewController.typeStartCheckoout = self.typeStartCheckout
        navigationController.pushViewController(mainSDKViewController, animated: true)
    }
    
    func getMainSDKViewController() -> MainSDKViewController {
        let storyBoard : UIStoryboard = UIStoryboard(name: "MainSDKController", bundle:nil)
        let mainSDKViewController = storyBoard.instantiateViewController(withIdentifier: "mainSDK") as! MainSDKViewController
        return mainSDKViewController
    }
}
