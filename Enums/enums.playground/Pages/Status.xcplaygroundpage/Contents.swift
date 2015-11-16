//: [Previous](@previous)

enum Status: String {
    case Draft = "draft"
    case Sent = "sent"
    case Failed = "failed"
}

struct Message {
    let text: String
    let status: Status

    init?(dictionary: NSDictionary) {
        guard
            let text = dictionary["text"] as? String,
            let statusString = dictionary["status"] as? String,
            let status = Status(rawValue: statusString)
            else { return nil }

        self.text = text
        self.status = status
    }
}

import Foundation

let messageDict = NSMutableDictionary()
messageDict["text"] = "Hello!"
messageDict["status"] = "sent"

let message = Message(dictionary: messageDict)
message?.text
message?.status

//: [Next](@next)
