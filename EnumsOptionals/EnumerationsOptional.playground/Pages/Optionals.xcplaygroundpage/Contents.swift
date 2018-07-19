struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func fullName() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        } else {
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me = Person(firstName: "Romell", middleName: "Richard", lastName: "Bolton")
me.fullName()

let airportCodes = ["CDG": "Charles De Gaulle"]
let newYorkAirport = airportCodes["JFK"]

// Optional Binding Using If Let

if let newYorkAiport = airportCodes["JFK"] {
    print(newYorkAiport)
} else {
    print("Whoops! That key does not exist!")
}

let weatherDictionary: [String: [String : String]] = [
    "currently" : ["temperature": "22.3"],
    "daily" : ["temperature": "22.3"],
    "weekly" : ["temperature": "22.3"]
]

if let dailyWeather = weatherDictionary["daily"] {
    if let highTemp = dailyWeather["temperature"] {
        print(highTemp)
    }
}

if let dailyWeather = weatherDictionary["daily"], let highTemperature = dailyWeather["temperature"] {
    print(highTemperature)
}

// Downsides to Using If Let
struct Friend {
    let name: String
    let age: String
    let address: String?
}

func new(friendDictionary: [String : String]) -> Friend? {
    if let name = friendDictionary["name"], let age = friendDictionary["age"] {
        let address = friendDictionary["address"]
        return Friend(name: name, age: age, address: address)
    } else {
        return nil
    }
}

// Early Exit

func newFriend(friendDictionary: [String : String]) -> Friend? {
    guard let name = friendDictionary["name"], let age = friendDictionary["age"] else {
        return nil
    }
    
    let address = friendDictionary["address"]
    
    return Friend(name: name, age: age, address: address)
}




