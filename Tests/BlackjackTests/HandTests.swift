import XCTest
@testable import Blackjack

extension HandTests {
    static var allTests: [(String, (HandTests) -> () throws -> Void)] {
        return [
            ("testInitializer", testInitializer),
            ("testScore", testScore),
            ("testScores", testScores)
        ]
    }
}

class HandTests: XCTestCase {
    let testData = [
        // numbers, score, scores
        ([3, 4], 7, [7]),
        ([9, 13], 19, [19]),
        ([12, 11], 20, [20]),
        ([1, 11], 21, [11, 21]),
        ([1, 11, 5], 16, [16, 26]),
        ([3, 4, 6, 1], 14, [14, 24]),
        ([1, 1], 12, [2, 12, 12, 22]),
        ([10, 5, 10], 25, [25]),
        ([1, 6, 9, 10], 26, [26, 36])
    ]

    func testInitializer() {
        let hand = Hand()
        XCTAssertEqual(hand.score, 0)
        XCTAssertEqual(hand.scores.count, 1)
    }

    func testScore() {
        for (numbers, score, _) in testData {
            let hand = Hand()
            for number in numbers {
                hand.add(card: Card(suit: .Spades, number: number))
            }
            XCTAssertEqual(hand.score, score)
        }
    }

    func testScores() {
        for (numbers, _, scores) in testData {
            let hand = Hand()
            for number in numbers {
                hand.add(card: Card(suit: .Spades, number: number))
            }
            XCTAssertEqual(hand.scores.sorted(), scores.sorted())
        }
    }
}
