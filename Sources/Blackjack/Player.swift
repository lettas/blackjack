class Player {
    let name: String
    let strategy: Strategy
    private var hand: Hand
    private var secondHand: Hand

    var description: String {
        if secondHand.isEmpty {
            return "\(name): \(hand.description)"
        }
        else {
            return "\(name): \(hand.description) \(secondHand.description)"
        }
    }

    init(name: String, strategy: Strategy) {
        self.name = name
        self.strategy = strategy
        self.hand = Hand()
        self.secondHand = Hand()
    }

    func accept(card: Card, toSecondHand: Bool = false) {
        if toSecondHand {
            self.secondHand.add(card)
        }
        else {
            self.hand.add(card)
        }
    }

    func clearHands() {
        self.hand = Hand()
        self.secondHand = Hand()
    }
}
