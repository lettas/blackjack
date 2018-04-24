import XCTest
@testable import Blackjack

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
}
