import Foundation

public class StartCheckoutSDK {
    var typeStartCheckout : TypeStartCheckout? = nil
    var languageToSet: String? = nil
    
    public init(){}
    
    public func setLanguage(_ language : String) {
        if (checkLanguageIsSupported(language)){
            self.languageToSet = getLanguagePrefix(language)
        } else {
            self.languageToSet = getLanguageDeviceSupported()
        }
    }
    
    
    private func _setLanguage(_ language : String){
        print("_setLanguage: language: \(language)")
        // This is done so that network calls now have the Accept-Language as Language.getCurrentLanguage() (Using Alamofire) Check if you can remove these
        UserDefaults.standard.set(language, forKey: "AppleLanguages")
        UserDefaults.standard.synchronize()
        Bundle.setLanguage(language)
    }
    
    private func _setCurrentLanguageSDK(){
        if(languageToSet != nil){
            _setLanguage(languageToSet!)
        } else {
            _setLanguage(getLanguageDeviceSupported())
        }
    }
    
    func startPaymentInModal(navigationController: UINavigationController){
        self._setCurrentLanguageSDK()
        let mainSDKViewController = self._getMainSDKViewController()
        mainSDKViewController.typeStartCheckout = self.typeStartCheckout
        navigationController.present(mainSDKViewController, animated: true) //PopUp
    }
    
    func startPaymentInScreen(navigationController: UINavigationController){
        self._setCurrentLanguageSDK()
        let mainSDKViewController = self._getMainSDKViewController()
        mainSDKViewController.typeStartCheckout = self.typeStartCheckout
        navigationController.pushViewController(mainSDKViewController, animated: true)
    }
    
    private func _getMainSDKViewController() -> MainSDKViewController {
        let storyBoard : UIStoryboard = UIStoryboard(name: "MainSDKController", bundle:nil)
        let mainSDKViewController = storyBoard.instantiateViewController(withIdentifier: "mainSDK") as! MainSDKViewController
        return mainSDKViewController
    }
}
