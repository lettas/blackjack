import XCTest

#if !os(OSX)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CardTests.allTests)
    ]
}
#endif
