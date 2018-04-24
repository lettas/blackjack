import XCTest

#if !os(OSX)
func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CardTests.allTests),
        testCase(HandTests.allTests),
        testCase(DealerStrategyTests.allTests)
    ]
}
#endif
