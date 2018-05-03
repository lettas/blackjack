import XCTest
@testable import Blackjack

extension PlayerTests {
    static var allTests: [(String, (PlayerTests) -> () throws -> Void)] {
        return [
            ("testInitializer", testInitializer),
            ("testAccept", testAccept),
            ("testAcceptToSecondHand", testAcceptToSecondHand),
            ("testClearHands", testClearHands),
        ]
    }
}

class MockStrategy: Strategy {
    func nextCommand(context: PlayingContext) -> Command {
        return Command.Stand
    }
}

class PlayerTests: XCTestCase {
    func testInitializer() {
        let player = Player(name: "John", strategy: MockStrategy())
        XCTAssertEqual(player.name, "John")
        XCTAssertNotNil(player.strategy)
        XCTAssertTrue(player.hand.isEmpty)
        XCTAssertTrue(player.secondHand.isEmpty)
    }

    func testAccept() {
        let player = Player(name: "John", strategy: MockStrategy())
        player.accept(card: .Hearts1)

        XCTAssertFalse(player.hand.isEmpty)
        XCTAssertTrue(player.secondHand.isEmpty)
        XCTAssertEqual(player.hand.cards.first!.suit, .Hearts)
        XCTAssertEqual(player.hand.cards.first!.number, 1)
    }

    func testAcceptToSecondHand() {
        let player = Player(name: "John", strategy: MockStrategy())
        player.accept(card: .Diamonds13, toSecondHand: true)

        XCTAssertTrue(player.hand.isEmpty)
        XCTAssertFalse(player.secondHand.isEmpty)
        XCTAssertEqual(player.secondHand.cards.first!.suit, .Diamonds)
        XCTAssertEqual(player.secondHand.cards.first!.number, 13)
    }

    func testClearHands() {
        let player = Player(name: "John", strategy: MockStrategy())
        XCTAssertTrue(player.hand.isEmpty)
        XCTAssertTrue(player.secondHand.isEmpty)

        player.accept(card: .Hearts1)
        player.accept(card: .Diamonds1)
        player.accept(card: .Spades13, toSecondHand: true)
        player.accept(card: .Clubs5, toSecondHand: true)
        XCTAssertFalse(player.hand.isEmpty)
        XCTAssertFalse(player.secondHand.isEmpty)

        player.clearHands()
        XCTAssertTrue(player.hand.isEmpty)
        XCTAssertTrue(player.secondHand.isEmpty)
    }
}
