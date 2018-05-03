import XCTest
@testable import Blackjack

extension CardTests {
    static var allTests: [(String, (CardTests) -> () throws -> Void)] {
        return [
            ("testAllCards", testAllCards),
            ("testEachCards", testEachCards),
            ("testDescription", testDescription)
        ]
    }
}

class CardTests: XCTestCase {
    func testAllCards() {
        XCTAssertEqual(Card.all.count, 52)
        XCTAssertEqual(Card.all.filter{ $0.suit == .Spades }.count, 13)
        XCTAssertEqual(Card.all.filter{ $0.suit == .Hearts }.count, 13)
        XCTAssertEqual(Card.all.filter{ $0.suit == .Diamonds }.count, 13)
        XCTAssertEqual(Card.all.filter{ $0.suit == .Clubs }.count, 13)
        for number in (1...13) {
            XCTAssertEqual(Card.all.filter{ $0.number == number }.count, 4)
        }
    }

    func testEachCards() {
        let test = { (card: Card, expectedSuit: Card.Suit, expectedRank: String) -> Void in
            XCTAssertEqual(card.suit, expectedSuit)
            XCTAssertEqual(card.rank, expectedRank)
        }

        test(.Spades1, .Spades, "A")
        test(.Spades2, .Spades, "2")
        test(.Spades3, .Spades, "3")
        test(.Spades4, .Spades, "4")
        test(.Spades5, .Spades, "5")
        test(.Spades6, .Spades, "6")
        test(.Spades7, .Spades, "7")
        test(.Spades8, .Spades, "8")
        test(.Spades9, .Spades, "9")
        test(.Spades10, .Spades, "10")
        test(.Spades11, .Spades, "J")
        test(.Spades12, .Spades, "Q")
        test(.Spades13, .Spades, "K")

        test(.Hearts1, .Hearts, "A")
        test(.Hearts2, .Hearts, "2")
        test(.Hearts3, .Hearts, "3")
        test(.Hearts4, .Hearts, "4")
        test(.Hearts5, .Hearts, "5")
        test(.Hearts6, .Hearts, "6")
        test(.Hearts7, .Hearts, "7")
        test(.Hearts8, .Hearts, "8")
        test(.Hearts9, .Hearts, "9")
        test(.Hearts10, .Hearts, "10")
        test(.Hearts11, .Hearts, "J")
        test(.Hearts12, .Hearts, "Q")
        test(.Hearts13, .Hearts, "K")

        test(.Diamonds1, .Diamonds, "A")
        test(.Diamonds2, .Diamonds, "2")
        test(.Diamonds3, .Diamonds, "3")
        test(.Diamonds4, .Diamonds, "4")
        test(.Diamonds5, .Diamonds, "5")
        test(.Diamonds6, .Diamonds, "6")
        test(.Diamonds7, .Diamonds, "7")
        test(.Diamonds8, .Diamonds, "8")
        test(.Diamonds9, .Diamonds, "9")
        test(.Diamonds10, .Diamonds, "10")
        test(.Diamonds11, .Diamonds, "J")
        test(.Diamonds12, .Diamonds, "Q")
        test(.Diamonds13, .Diamonds, "K")

        test(.Clubs1, .Clubs, "A")
        test(.Clubs2, .Clubs, "2")
        test(.Clubs3, .Clubs, "3")
        test(.Clubs4, .Clubs, "4")
        test(.Clubs5, .Clubs, "5")
        test(.Clubs6, .Clubs, "6")
        test(.Clubs7, .Clubs, "7")
        test(.Clubs8, .Clubs, "8")
        test(.Clubs9, .Clubs, "9")
        test(.Clubs10, .Clubs, "10")
        test(.Clubs11, .Clubs, "J")
        test(.Clubs12, .Clubs, "Q")
        test(.Clubs13, .Clubs, "K")
    }

    func testDescription() {
        XCTAssertEqual(Card.Spades5.description, "\u{2660}5")
        XCTAssertEqual(Card.Hearts5.description, "\u{2661}5")
        XCTAssertEqual(Card.Diamonds5.description, "\u{2662}5")
        XCTAssertEqual(Card.Clubs5.description, "\u{2663}5")
    }
}
