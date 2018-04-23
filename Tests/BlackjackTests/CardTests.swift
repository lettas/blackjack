import XCTest
@testable import Blackjack

class CardTests: XCTestCase {
    func testInitializer() {
        let card = Card(suit: .Spades, number: 5)
        XCTAssertEqual(card.suit, .Spades)
        XCTAssertEqual(card.number, 5)
    }

    func testDisplayNumber() {
        XCTAssertEqual(Card(suit: .Spades, number: 1).displayNumber, "A")
        XCTAssertEqual(Card(suit: .Spades, number: 2).displayNumber, "2")
        XCTAssertEqual(Card(suit: .Spades, number: 3).displayNumber, "3")
        XCTAssertEqual(Card(suit: .Spades, number: 4).displayNumber, "4")
        XCTAssertEqual(Card(suit: .Spades, number: 5).displayNumber, "5")
        XCTAssertEqual(Card(suit: .Spades, number: 6).displayNumber, "6")
        XCTAssertEqual(Card(suit: .Spades, number: 7).displayNumber, "7")
        XCTAssertEqual(Card(suit: .Spades, number: 8).displayNumber, "8")
        XCTAssertEqual(Card(suit: .Spades, number: 9).displayNumber, "9")
        XCTAssertEqual(Card(suit: .Spades, number: 10).displayNumber, "10")
        XCTAssertEqual(Card(suit: .Spades, number: 11).displayNumber, "J")
        XCTAssertEqual(Card(suit: .Spades, number: 12).displayNumber, "Q")
        XCTAssertEqual(Card(suit: .Spades, number: 13).displayNumber, "K")
    }
}
