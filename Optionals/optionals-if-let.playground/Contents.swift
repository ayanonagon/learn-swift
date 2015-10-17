// Optional?
// if let

import Foundation

struct Person {
    let givenName: String
    let familyName: String
    let middleName: String?

    var displayName: String {
        if let middleName = middleName {
            return givenName + " " + middleName + " " + familyName
        }
        return givenName + " " + familyName
    }
}

let me = Person(givenName: "Ayaka", familyName: "Nonaka", middleName: nil)

me.givenName
me.familyName
me.middleName
