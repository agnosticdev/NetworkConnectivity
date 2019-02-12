import XCTest

import NetworkConnectivityTests

var tests = [XCTestCaseEntry]()
tests += NetworkConnectivityTests.allTests()
XCTMain(tests)