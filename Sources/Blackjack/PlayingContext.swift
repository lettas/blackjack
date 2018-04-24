struct PlayingContext {
    let knownDealerCard: Card
    let subjectHand: Hand
    let otherHands: [Hand]

    init(knownDealerCard: Card, subjectHand: Hand, otherHands: [Hand]) {
        self.knownDealerCard = knownDealerCard
        self.subjectHand = subjectHand
        self.otherHands = otherHands
    }
}
