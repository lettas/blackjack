import XCTest
@testable import Blackjack

class CardTests: XCTestCase {
    func test() {
        let card = Card(suit: .Spades, number: 5)
        XCTAssertEqual(card.suit, .Spades)
        XCTAssertEqual(card.number, 5)
    }
}
