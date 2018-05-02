class Hand {
    private var cards: [Card]

    var score: Int {
        // 手札が取りうるスコアの中から、21以下で一番大きい数を返す
        let score = scores.sorted().reversed().first(where: { $0 <= 21 })
        // 21以下がなかったらなんでもいいので一番小さい数を返す
        return score ?? scores.first!
    }

    var scores: [Int] {
        var scores = [0]

        for card in cards {
            // card.numberが1の時はは1か11かを選ぶことができる
            if card.number == 1 {
                scores = scores.map { $0 + 1 } + scores.map { $0 + 11 }
            }
            else {
                let cardScore = min(card.number, 10)
                scores = scores.map { $0 + cardScore }
            }
        }

        return scores
    }

    init(cards: [Card]) {
        self.cards = cards
    }

    convenience init() {
        self.init(cards: [Card]())
    }

    func add(_ card: Card) {
        self.cards.append(card)
    }
}
