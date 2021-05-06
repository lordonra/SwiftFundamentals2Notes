import UIKit

// Custom data types - represent complexed, real world information that cant be represented with a single value (Int, String, ect)

// we are going to biuild the data types for a coffee app.

//******************Enums (Enumeration) Very often are used to limit the choices of something (in a good way)*************

// (these show the only optins you can select from { small medium or large coffee, you cant order some rando other size } also class, structs, and enums use Upper camel case which capitilizes the first letter

// each choice for the enum is added by creating a case

enum RoastLevel {
    case light
    case medium
    case dark
}

let myRoastLevel = RoastLevel.medium
//let myRoastLevel: RoastLevel = .medium

// ****************************************** Structs - Structure   ******************************************************
//when we define the struct of coffee, we define the "idea" of coffee

struct Coffee {
//    Properties - the individual pieces that make up the data type
//    anything within the curly braces all relate to "make up" the idea of coffee. ie Name, Reigon, Roast Level
    let name: String
    let region: String
    let roast: RoastLevel
}
//this is an "instance" of coffee, its the physical cup of coffee handed to me, not just the "idea" thats on the menu board
let  myFavoriteCoffee = Coffee(name: "Pike Place", region: "Portland", roast: RoastLevel.medium)
let nonyeCoffee = Coffee(name: "Petes", region: "Ireland", roast: .medium)

// ****************************************************   Class  *********************************************************

class CoffeeShop {
    let name: String
    var address: String
    var menu:[Coffee]
//    Initilizer - The way of taking the indivual parts of a coffee shop and turning it into an actual coffee shop
    init(name: String, address: String, menu: [Coffee]) {
        self.name = name // "cafe du onra"
        self.address = address
        self.menu = menu
    }
    func readMenu() {
        print("our current menu is \(menu)")
    }
}
    //init(shopName: String, shopAddress: String, shopMenu: [Coffee] {
//    name = shopName
//    address = shopAddress
//    menu = shopMenu
//    *****using this way to initilize allows you to not have to use self declaration****
//}
let myShop = CoffeeShop(name: "Cafe Du Onra", address: "123 Coffee town", menu: [myFavoriteCoffee, Coffee(name: "Komodo", region: "japan", roast: .dark)])
//myShop.readMenu()    to call the function from the class


//print(myShop.readMenu())

    
//*************************************************** Optionals ********************************************************
// allowed to have a nil value / none,  a lack of a value

var middleName: String? = nil
// use a question mark at the end of the data type to show optional value

// 14 years old
var myCar : String? = nil

// after working for a few years and getting driveers license
myCar = "honda civic"

// sells car and takes bus

//myCar = nil

print(myCar)
// prints and shows that it "MIGHT" be honda civic

//     ********** Unwrapping Optionals ******************

//unwrapping optinonals - taking the box and opening it to see if there is a value or not in the optional property

// Optional Binding - If Let Statement

//i want to print out my car only if there is one...

if let myunwrappedCar = myCar {
    print(myunwrappedCar)
}
// takes the information from original variable and if something is there, put it into a new "let" when its unwrapped
// think about it ______ if its not nil, lets make a new constant, let unwrapped car = my car with the value

// converting types

let numberString = String(1.99)
let numberFromString = Int("Onra")

func calculateTip(totalString: String) -> Double? {
    //convert total into a number
    if let total = Double(totalString) {
        
        //figure out the tip
        let tip = total * 0.2
        
        return tip
    } else {
    // iin the case that the string is not actually a number, what could we return instead?
    return nil
    }
}
calculateTip(totalString: "20.98")

var age: Int? = 70
//calculate amount of days they have lived (more or less)

// force unwrapping (!)

let daysLived = 365 * age!
//not safe and best to not use BANG operator

