import Foundation
import Firebase
import FirebaseFirestore

class ChatRoom {
    
    let latesMessageId: String
    let members: [String]
    let createdAt: Timestamp
    
    var partnerUser: User?
    
    init(dic: [String: Any]) {
        self.latesMessageId = dic["latestMessageId"] as? String ?? ""
        self.members = dic["membres"] as? [String] ?? [String]()
        self.createdAt = dic["createdAt"] as? Timestamp ?? Timestamp()
    }
    
}
