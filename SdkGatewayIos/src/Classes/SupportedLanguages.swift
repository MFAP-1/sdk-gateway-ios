import Foundation

public enum SupportedLanguages: String, CaseIterable {
    /**
     ENGLISH US - This is our default value.
     */
    case ENGLISH = "en"
    /**
     PORTUGUESE Brazil
     */
    case PORTUGUESE =  "pt"
    /**
     SPANISH  Spain
     */
    case SPANISH = "es"
    
    static func getDefault() -> SupportedLanguages {
        return SupportedLanguages.ENGLISH
    }
}

func getLanguagePrefix(_ language : String) -> String {
    return String(language.prefix(2)).lowercased()
}

func checkLanguageIsSupported(_ language : String) -> Bool {
    let supportedLanguages: [String] = SupportedLanguages.allCases.map { $0.rawValue }
    let languageFormatted = getLanguagePrefix(language)
    return supportedLanguages.contains(languageFormatted)
}

func getLanguageDevice() -> String {
    if let locale = NSLocale.current.languageCode {
       return locale
    } else {
        return SupportedLanguages.getDefault().rawValue
    }
}
