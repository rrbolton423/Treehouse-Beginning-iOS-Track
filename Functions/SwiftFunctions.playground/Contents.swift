// Area calculation for room #2

let secondLength = 14
let secondWidth = 8

let secondArea = secondLength * secondWidth

// Area calculation for room #1

func area(length:Int, width:Int) -> Int {
    let areaOfRoom = length * width
    
    return areaOfRoom
}

let areaOfFirstRoom = area(length: 10, width: 12)
let areaOfSecondRoom = area(length: 15, width: 22)

// Argument Labels
func remove(havingValue value: String) {
    print(value)
}

remove(havingValue: "A")

// Default Values

func carpetCostHaving(length: Int, width: Int, carpetColor color: String = "tan") -> (price: Int, carpetColor: String) {
    // Gray carpet - $1/sq ft
    // Tan carpet - $2/sq ft
    // Deep Blue carpet - $4/sq ft
    
    let areaOfRoom = area(length: length, width: width)
    
    var price = 0
    
    switch color {
    case "gray": price = areaOfRoom * 1
    case "tan": price = areaOfRoom * 2
    case "blue": price = areaOfRoom * 4
    default: price = 0
    }
    
    return (price, color)
}

let result = carpetCostHaving(length: 10, width: 20)
result.price
result.carpetColor

// Scope

let testArray = [1]

func arrayModifier(array: [Int]) {
    var arrayOfInts = array
    arrayOfInts.append(5)
    
    var secondArray = arrayOfInts
}

var arrayOfInts = [1,2,3,4]
arrayModifier(array: arrayOfInts)
arrayOfInts
