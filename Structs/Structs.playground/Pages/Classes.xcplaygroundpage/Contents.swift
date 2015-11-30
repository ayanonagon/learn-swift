//: Playground - noun: a place where people can play

class Item {
    let name: String
    var price: UInt

    init(name: String, price: UInt) {
        self.name = name
        self.price = price
    }
}

class Cart {
    let items: [Item]

    var total: UInt {
        return items.reduce(0) { sum, item in
            sum + item.price
        }
    }

    init(items: [Item]) {
        self.items = items
    }
}

let chickenHat = Item(name: "🐔", price: 5000)
let apple = Item(name: "🍏", price: 100)

var items = [chickenHat, apple]

let cart = Cart(items: items)
cart.total

chickenHat.price = 100000
cart.total

//: [Next](@next)
