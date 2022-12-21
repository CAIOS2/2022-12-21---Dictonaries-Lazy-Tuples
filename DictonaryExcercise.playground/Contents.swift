import UIKit

// MARK: - JSON file -

//{
//        "id": "f3c2844c-ddfd-49fb-bd8b-8210fe1745f6", ✅
//        "active": true, ✅
//        "type": "receipt", ✅
//        "requirement": {
//            "item": {
//                "id": "6256d1a0-c112-d64f-06e1-9e0b5917d9d8" ✅
//            }, ✅
//            "stamp": 5, ✅
//            "purchase_to": "2020-12-24T12:00:00Z", ✅
//            "purchase_from": "2020-09-29T11:44:04Z" ✅
//        }, ✅
//        "limitation": {}, ✅
//        "reward": {
//            "type": "discount_item_percent", ✅
//            "value": 50 ✅
//        }, ✅
//        "links": [], ✅
//        "metadata": {}, ✅
//        "created_at": "2020-10-23T10:52:52.134Z", ✅
//        "created_by": "cb8e777e-106f-4a3d-b75f-d1a73d37e5f3", ✅
//        "updated_at": "2020-10-23T10:52:52.134Z" ✅
//}

// MARK: - Converted to nested Dictonary of type [String: Any] -

let myDict: [String: Any] = [
    "id": "f3c2844c-ddfd-49fb-bd8b-8210fe1745f6",
    "active": true,
    "type": "receipt",
    "requirement": [
        "item": [
            "id": "6256d1a0-c112-d64f-06e1-9e0b5917d9d8"
        ],
        "stamp": 5,
        "purchase_to": "2020-12-24T12:00:00Z",
        "purchase_from": "2020-09-29T11:44:04Z"
    ],
    "limitation": [:],
    "reward": [
        "type": "discount_item_percent",
        "value": 50
    ],
    "links": [],
    "metadata": [:],
    "created_at": "2020-10-23T10:52:52.134Z",
    "created_by": "cb8e777e-106f-4a3d-b75f-d1a73d37e5f3",
    "updated_at": "2020-10-23T10:52:52.134Z"
]

//print(myDict)


// MARK: - Converted to using separate Dictonaries and joined to one -

var mainDict: [String: Any] = [
    "id": "f3c2844c-ddfd-49fb-bd8b-8210fe1745f6"
]

mainDict["active"] = true
mainDict["type"] = "receipt"
mainDict["limitation"] = [:]
mainDict["links"] = []
mainDict["metadata"] = [:]
mainDict["created_at"] = "2020-10-23T10:52:52.134Z"
mainDict["created_by"] = "cb8e777e-106f-4a3d-b75f-d1a73d37e5f3"
mainDict["updated_at"] = "2020-10-23T10:52:52.134Z"

let itemDict = ["id": "6256d1a0-c112-d64f-06e1-9e0b5917d9d8"]

let requirementDict: [String: Any] = [
    "item": itemDict,
    "stamp": 5,
    "purchase_to": "2020-12-24T12:00:00Z",
    "purchase_from": "2020-09-29T11:44:04Z"
]

mainDict["requirement"] = requirementDict

var rewardDict = [String: Any]()
rewardDict["type"] = "discount_item_percent"
rewardDict["value"] = 50

//print(myDict)


// MARK: - Create a class with JSON object -

class MyError: Error {
    
}

class MyDictionaryClass {
    
    //MARK: Properties
    
    let id: String
    let active: Bool
    let type: String
    
    let requirement: [String: Any]
    let limitation: [String: Any]
    let reward: [String: Any]
    let links: [Any]
    let metadata: [String: Any]
    
    let created_at: String
    let created_by: String
    let updated_at: String
    
    //MARK: Init
    
    init(id: String,
         active: Bool,
         type: String,
         requirement: [String: Any],
         limitation: [String: Any],
         reward: [String: Any],
         links: [Any],
         metadata: [String: Any],
         created_at: String,
         created_by: String,
         updated_at: String
    ) {
        self.id = id
        self.active = active
        self.type = type
        self.requirement = requirement
        self.limitation = limitation
        self.reward = reward
        self.links = links
        self.metadata = metadata
        self.created_at = created_at
        self.created_by = created_by
        self.updated_at = updated_at
        
    }
    
    init(jsonDictionary: [String: Any]) throws {
        guard
            let id = jsonDictionary["id"] as? String,
            let active = jsonDictionary["active"] as? Bool,
            let type = jsonDictionary["type"] as? String,
            let requirement = jsonDictionary["requirement"] as? [String: Any],
            let limitation = jsonDictionary["limitation"] as? [String: Any],
            let reward = jsonDictionary["reward"] as? [String: Any],
            let links = jsonDictionary["links"] as? [Any],
            let metadata = jsonDictionary["metadata"] as? [String: Any],
            let created_at = jsonDictionary["created_at"] as? String,
            let created_by = jsonDictionary[Key.created_by.getString()] as? String,
            let updated_at = jsonDictionary["updated_at"] as? String
        else {
            throw MyError()
        }
        self.id = id
        self.active = active
        self.type = type
        self.requirement = requirement
        self.limitation = limitation
        self.reward = reward
        self.links = links
        self.metadata = metadata
        self.created_at = created_at
        self.created_by = created_by
        self.updated_at = updated_at
    }
    
    // MARK: Public
    
    func printInstances() {
        print(id)
        print(active)
        print(type)
        print(requirement)
        print(limitation)
        print(reward)
        print(links)
        print(metadata)
        print(created_at)
        print(created_by)
        print(updated_at)
    }
}

//let myClass = MyDictionaryClass(id: myDict["id"] as! String,
//                                active: myDict["active"] as! Bool,
//                                type: myDict["type"] as! String,
//                                requirement: myDict["requirement"] as! [String: Any],
//                                limitation: myDict["limitation"] as! [String: Any],
//                                reward: myDict["reward"] as! [String : Any],
//                                links: myDict["links"] as! [Any],
//                                metadata: myDict["metadata"] as! [String: Any],
//                                created_at: myDict["created_at"] as! String,
//                                created_by: myDict["created_by"] as! String,
//                                updated_at: myDict["updated_at"] as! String)

//myClass.printInstances()

do {
    let anotherClass = try MyDictionaryClass(jsonDictionary: myDict)
    anotherClass.printInstances()
} catch {
    print("Failed to create MyDictionaryClass instance")
}
