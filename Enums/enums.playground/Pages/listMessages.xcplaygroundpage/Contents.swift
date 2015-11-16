//: [Previous](@previous)

import Foundation

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

func listMessages(completion: (messages: [Message]?, error: NSError?) -> Void) {
    // Get the list of messages
    // If success, call completion(messages: messages, error: nil)
    // If error, call completion(messages: nil, error: error)
}

//: [Next](@next)
