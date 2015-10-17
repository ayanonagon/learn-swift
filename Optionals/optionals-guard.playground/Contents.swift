// Optional?
// guard

import Foundation

struct Person {
    let givenName: String
    let familyName: String
    let middleName: String?

    var displayName: String {
        guard let middleName = middleName else {
            return givenName + familyName
        }
        return givenName + " " + middleName + " " + familyName
    }

    init?(dictionary: NSDictionary) {
        guard
            let givenName = dictionary["given_name"] as? String,
            let familyName = dictionary["family_name"] as? String
        else { return nil }

        self.givenName = givenName
        self.familyName = familyName
        self.middleName = dictionary["middle_name"] as? String
    }
}

let userDict: NSMutableDictionary = NSMutableDictionary()
userDict["given_name"] = "Ayaka"
userDict["family_name"] = "Nonaka"
userDict["middle_name"] = "Chewbacca"

let me = Person(dictionary: userDict)
me?.givenName
