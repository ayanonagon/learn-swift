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

enum Result<SuccessType> {
    case Success(messages: SuccessType)
    case Error(error: NSError)
}

func listMessages(completion: Result<[Message]> -> Void) {
    // Get the list of messages
    // If success, call completion(Result.Success(messages: messages))
    // If error, call completion(Result.Error(error: error))
}

//: [Next](@next)
