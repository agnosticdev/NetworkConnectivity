import XCTest
@testable import network_connectivity

final class network_connectivityTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(network_connectivity().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
