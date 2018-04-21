# コマンドプロンプトでマルチプレイブラックジャック

## ルール

手札の合計が21より小さくて21に近くなることをディラーと競い合うゲーム。(▶︎[詳細](http://www.mastertwentyone.com/rules.html))

## 遊んでる様子(イメージ)

```
chip: alice 50
chip: bob 50
bet? alice> 10
bet? bob> 10
hand: dealer 8 *
hand: alice 8 7
hand: bob 2 3
command? alice> ?
commands: H(Hit) S(Stand) D(Double) /(Split) ?(Help)
command? alice> H
command? bob> H
hand: alice 8 7 9
hand: bob 2 3 8
command? bob> H
hand: bob 2 3 8 6
command? bob> S
hand: dealer 1 8
hand: dealer 1 8 7
hand: dealer 1 8 7 2
payout: alice 0
payout: bob 20
chip: alice 40
chip: bob 60
```

### Splitの例

```
hand: alice 8 8
command? alice> /
hand: alice 8 3 / 8 A
command? alice> H S
hand: alice 8 3 9 / 8 A
command? alice> S S
```
