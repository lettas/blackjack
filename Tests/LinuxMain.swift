import XCTest
@testable import BlackjackTests

var tests = [XCTestCaseEntry]()

tests += BlackjackTests.allTests()

XCTMain(tests)
