import XCTest
@testable import Blackjack

extension HandTests {
    static var allTests: [(String, (HandTests) -> () throws -> Void)] {
        return [
            ("testInitializer", testInitializer),
            ("testScore", testScore),
            ("testDescription", testDescription),
        ]
    }
}

class HandTests: XCTestCase {
    let testData: [([Card], Int, [Int])] = [
        // cards, score, scores
        ([.Spades3, .Spades4], 7, [7]),
        ([.Spades9, .Spades13], 19, [19]),
        ([.Spades12, .Spades11], 20, [20]),
        ([.Spades1, .Spades11], 21, [11, 21]),
        ([.Spades1, .Spades11, .Spades5], 16, [16, 26]),
        ([.Spades3, .Spades4, .Spades6, .Spades1], 14, [14, 24]),
        ([.Spades1, .Spades1], 12, [2, 12, 12, 22]),
        ([.Spades10, .Spades5, .Spades10], 25, [25]),
        ([.Spades1, .Spades6, .Spades9, .Spades10], 26, [26, 36])
    ]

    func testInitializer() {
        let hand = Hand()
        XCTAssertEqual(hand.score, 0)
        XCTAssertEqual(hand.scores.count, 1)
    }

    func testScore() {
        for (cards, score, _) in testData {
            let hand = Hand()
            for card in cards {
                hand.add(card)
            }
            XCTAssertEqual(hand.score, score)
        }
    }

    func testScores() {
        for (cards, _, scores) in testData {
            let hand = Hand()
            for card in cards {
                hand.add(card)
            }
            XCTAssertEqual(hand.scores.sorted(), scores.sorted())
        }
    }

    func testDescription() {
        let hand = Hand(cards: [.Diamonds1, .Spades13, .Clubs4])
        XCTAssertEqual(hand.description, "\(Card.Diamonds1.description) \(Card.Spades13.description) \(Card.Clubs4.description)")
    }
}
