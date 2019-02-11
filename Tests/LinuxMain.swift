import XCTest

import network_connectivityTests

var tests = [XCTestCaseEntry]()
tests += network_connectivityTests.allTests()
XCTMain(tests)