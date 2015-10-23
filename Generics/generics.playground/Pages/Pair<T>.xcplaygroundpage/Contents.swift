// Pair<T>

struct Pair<😁> {
    let first: 😁
    let second: 😁
}

let things = Pair(first: "Thing 1", second: "Thing 2")
things.first
things.second

let snakeEyes = Pair(first: 1, second: 1)
snakeEyes.first
snakeEyes.second

let pairOfPairs = Pair(first: Pair(first: "First First", second: "First Second"),
    second: Pair(first: "Second First", second: "Second Second"))
