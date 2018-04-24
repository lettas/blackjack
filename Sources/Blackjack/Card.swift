struct Card {
    enum Suit: String {
        case Spades = "\u{2660}"
        case Hearts = "\u{2661}"
        case Diamonds = "\u{2662}"
        case Clubs = "\u{2663}"
    }

    let suit: Suit
    let number: Int

    var displayNumber: String {
        switch number {
            case 1: return "A"
            case 11: return "J"
            case 12: return "Q"
            case 13: return "K"
            default: return "\(number)"
        }
    }

    var description: String {
        return "\(suit.rawValue)\(number)"
    }

    private init(suit: Suit, number: Int) {
        self.suit = suit
        self.number = number
    }

    static let Spades1 = Card(suit: .Spades, number: 1)
    static let Spades2 = Card(suit: .Spades, number: 2)
    static let Spades3 = Card(suit: .Spades, number: 3)
    static let Spades4 = Card(suit: .Spades, number: 4)
    static let Spades5 = Card(suit: .Spades, number: 5)
    static let Spades6 = Card(suit: .Spades, number: 6)
    static let Spades7 = Card(suit: .Spades, number: 7)
    static let Spades8 = Card(suit: .Spades, number: 8)
    static let Spades9 = Card(suit: .Spades, number: 9)
    static let Spades10 = Card(suit: .Spades, number: 10)
    static let Spades11 = Card(suit: .Spades, number: 11)
    static let Spades12 = Card(suit: .Spades, number: 12)
    static let Spades13 = Card(suit: .Spades, number: 13)

    static let Hearts1 = Card(suit: .Hearts, number: 1)
    static let Hearts2 = Card(suit: .Hearts, number: 2)
    static let Hearts3 = Card(suit: .Hearts, number: 3)
    static let Hearts4 = Card(suit: .Hearts, number: 4)
    static let Hearts5 = Card(suit: .Hearts, number: 5)
    static let Hearts6 = Card(suit: .Hearts, number: 6)
    static let Hearts7 = Card(suit: .Hearts, number: 7)
    static let Hearts8 = Card(suit: .Hearts, number: 8)
    static let Hearts9 = Card(suit: .Hearts, number: 9)
    static let Hearts10 = Card(suit: .Hearts, number: 10)
    static let Hearts11 = Card(suit: .Hearts, number: 11)
    static let Hearts12 = Card(suit: .Hearts, number: 12)
    static let Hearts13 = Card(suit: .Hearts, number: 13)

    static let Diamonds1 = Card(suit: .Diamonds, number: 1)
    static let Diamonds2 = Card(suit: .Diamonds, number: 2)
    static let Diamonds3 = Card(suit: .Diamonds, number: 3)
    static let Diamonds4 = Card(suit: .Diamonds, number: 4)
    static let Diamonds5 = Card(suit: .Diamonds, number: 5)
    static let Diamonds6 = Card(suit: .Diamonds, number: 6)
    static let Diamonds7 = Card(suit: .Diamonds, number: 7)
    static let Diamonds8 = Card(suit: .Diamonds, number: 8)
    static let Diamonds9 = Card(suit: .Diamonds, number: 9)
    static let Diamonds10 = Card(suit: .Diamonds, number: 10)
    static let Diamonds11 = Card(suit: .Diamonds, number: 11)
    static let Diamonds12 = Card(suit: .Diamonds, number: 12)
    static let Diamonds13 = Card(suit: .Diamonds, number: 13)

    static let Clubs1 = Card(suit: .Clubs, number: 1)
    static let Clubs2 = Card(suit: .Clubs, number: 2)
    static let Clubs3 = Card(suit: .Clubs, number: 3)
    static let Clubs4 = Card(suit: .Clubs, number: 4)
    static let Clubs5 = Card(suit: .Clubs, number: 5)
    static let Clubs6 = Card(suit: .Clubs, number: 6)
    static let Clubs7 = Card(suit: .Clubs, number: 7)
    static let Clubs8 = Card(suit: .Clubs, number: 8)
    static let Clubs9 = Card(suit: .Clubs, number: 9)
    static let Clubs10 = Card(suit: .Clubs, number: 10)
    static let Clubs11 = Card(suit: .Clubs, number: 11)
    static let Clubs12 = Card(suit: .Clubs, number: 12)
    static let Clubs13 = Card(suit: .Clubs, number: 13)

    static let all = [
        Spades1, Spades2, Spades3, Spades4, Spades5, Spades6, Spades7, Spades8, Spades9, Spades10, Spades11, Spades12, Spades13,
        Hearts1, Hearts2, Hearts3, Hearts4, Hearts5, Hearts6, Hearts7, Hearts8, Hearts9, Hearts10, Hearts11, Hearts12, Hearts13,
        Diamonds1, Diamonds2, Diamonds3, Diamonds4, Diamonds5, Diamonds6, Diamonds7, Diamonds8, Diamonds9, Diamonds10, Diamonds11, Diamonds12, Diamonds13,
        Clubs1, Clubs2, Clubs3, Clubs4, Clubs5, Clubs6, Clubs7, Clubs8, Clubs9, Clubs10, Clubs11, Clubs12, Clubs13,
    ]
}
