// Optional?

struct Person {
    let givenName: String
    let familyName: String
    let middleName: String
}

let me = Person(givenName: "Ayaka", familyName: "Nonaka", middleName: nil) // This doesn’t compile!
