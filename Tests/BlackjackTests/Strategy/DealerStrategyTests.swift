import XCTest
@testable import Blackjack

extension DealerStrategyTests {
    static var allTests: [(String, (DealerStrategyTests) -> () throws -> Void)] {
        return [
            ("testUnder17", testUnder17),
            ("testOver17", testOver17),
            ("testSimulation", testSimulation)
        ]
    }
}

class DealerStrategyTests: XCTestCase {
    func testUnder17() {
        let strategy = DealerStrategy()
        let hand = Hand(cards: [Card.Spades1, Card.Spades5])
        let context = PlayingContext.forDealer(hand: hand)
        let command = strategy.nextCommand(context: context)
        XCTAssertEqual(hand.score, 16)
        XCTAssertEqual(command, Command.Hit)
    }

    func testOver17() {
        let strategy = DealerStrategy()
        let hand = Hand(cards: [Card.Spades1, Card.Spades6])
        let context = PlayingContext.forDealer(hand: hand)
        let command = strategy.nextCommand(context: context)
        XCTAssertEqual(hand.score, 17)
        XCTAssertEqual(command, Command.Stand)
    }

    func testSimulation() {
        let strategy = DealerStrategy()
        let hand = Hand(cards: [.Spades3, .Hearts2])
        let context = PlayingContext.forDealer(hand: hand)

        var command = strategy.nextCommand(context: context)

        XCTAssertEqual(hand.score, 5)
        XCTAssertEqual(command, Command.Hit)

        hand.add(.Clubs4)
        command = strategy.nextCommand(context: context)
        XCTAssertEqual(hand.score, 9)
        XCTAssertEqual(command, Command.Hit)

        hand.add(.Diamonds7)
        command = strategy.nextCommand(context: context)
        XCTAssertEqual(hand.score, 16)
        XCTAssertEqual(command, Command.Hit)

        hand.add(.Spades9)
        command = strategy.nextCommand(context: context)
        XCTAssertEqual(hand.score, 25)
        XCTAssertEqual(command, Command.Stand)
    }
}

extension PlayingContext {
    static func forDealer(hand: Hand) -> PlayingContext {
        return PlayingContext(
            knownDealerCard: Card.Spades1,
            subjectHand: hand,
            otherHands: [Hand]()
        )
    }
}
