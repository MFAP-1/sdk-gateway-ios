import XCTest
@testable import SdkGatewayIos

final class SupportedLanguagesTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_SupportedLanguagesClass() throws {
        XCTAssertEqual(SupportedLanguages.ENGLISH.rawValue, "en")
        XCTAssertEqual(SupportedLanguages.PORTUGUESE.rawValue, "pt")
        XCTAssertEqual(SupportedLanguages.SPANISH.rawValue, "es")
        XCTAssertEqual(SupportedLanguages.getDefault().rawValue, "en")
    }
    
    func test_getLanguagePrefix() throws {
        XCTAssertEqual(getLanguagePrefix("PT-br"), "pt")
        XCTAssertEqual(getLanguagePrefix("PT"), "pt")
        XCTAssertEqual(getLanguagePrefix("Es"), "es")
        XCTAssertEqual(getLanguagePrefix("pt"), "pt")
        XCTAssertEqual(getLanguagePrefix("p"), "p")
        XCTAssertEqual(getLanguagePrefix(""), "")
        XCTAssertEqual(getLanguagePrefix(" en "), "en")
    }
    
    func test_checkLanguageIsSupported_validValues() throws {
        XCTAssertEqual(checkLanguageIsSupported("PT-br"), true)
        XCTAssertEqual(checkLanguageIsSupported("PT"), true)
        XCTAssertEqual(checkLanguageIsSupported("Es"), true)
        XCTAssertEqual(checkLanguageIsSupported("pt"), true)
        XCTAssertEqual(checkLanguageIsSupported("p"), false)
        XCTAssertEqual(checkLanguageIsSupported(""), false)
        XCTAssertEqual(checkLanguageIsSupported(" en "), true)
    }
    
    func test_checkLanguageIsSupported_invalidValues() throws {
        XCTAssertEqual(checkLanguageIsSupported("p"), false)
        XCTAssertEqual(checkLanguageIsSupported(""), false)
        XCTAssertEqual(checkLanguageIsSupported("uk"), false)
    }
}
