struct Friend {
    let name: String
    let age: String
    let address: String?
}

enum FriendError: Error {
    case invalidData(description: String)
    case someError
}

func friend(from dict: [String : String]) throws -> Friend {
    guard let name = dict["name"] else { throw FriendError.invalidData(description: "Invalid name value") }
    
    guard let age = dict["age"] else { throw FriendError.invalidData(description: "Invalid age value") }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}

func send(message: String, to friend: Friend) {
    
}

let response = ["name": "Romell", "age": "20", "address": "someAddress"]

do {
    let myFriend = try friend(from: response)
    send(message: "Test", to: myFriend)
} catch FriendError.invalidData(let description) {
    // Inform the user that they passed in invalidData
    print(description)
} catch FriendError.someError {
    
}

enum ParserError: Error {
    case emptyDictionary
    case invalidKey
}

struct Parser {
    var data: [String : String?]?
    
    func parse() throws {
        guard let someKey = data?["someKey"]
            else { throw ParserError.invalidKey}
    }
    
}

let data: [String : String?]? = ["someKey": nil]
let parser = Parser(data: data)

do {
    let result = try parser.parse()
} catch ParserError.emptyDictionary {
    print("Error: Empty Dictionary")
} catch ParserError.invalidKey {
    print("Error: Invalid Key")
}


