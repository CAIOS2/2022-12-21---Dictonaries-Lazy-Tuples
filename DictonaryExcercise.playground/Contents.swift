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


print(myDict)


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

print(myDict)
