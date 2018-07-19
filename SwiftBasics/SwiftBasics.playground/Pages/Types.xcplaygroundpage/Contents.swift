// String Concatenation
let country = "United States of America"
let state = "North Carolina"
let city = "Charlotte"
let street = "West Street"
let buildingNumber = 222

let address = country + ", " + state + ", " + city
// let streetAddress = buildingNumber + street <- Does not compile!

// String Interpolation

let interpolatedAddress = " \(country), \(state), \(city) "
let interpolatedStreetAddress = "\(buildingNumber) \(street)"

/*
 ---------------
 Integers
 ---------------
*/

let favoriteProgrammingLanguage = "Swift"
let year = 2014 // Int

/*
 -------------------------
 Floating Point Numbers
 -------------------------
 */

var version = 3.0 // Double

/*
 ---------------
 Boolean
 ---------------
 */

let isAwesome = true

/*
 ---------------
 Type Safety
 ---------------
 */

var someString = ""
// someString = 12.0

let bestPlayer: String = "Michael Jordan"
let averagePointsPerGame: Double = 30.1
let yearOfRetirement: Int = 2003
let hallOfFame: Bool = true
