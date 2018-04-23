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

    init(suit: Suit, number: Int) {
        self.suit = suit
        self.number = number
    }
}
