import Foundation

// Déclaration de variables

var myString: String = "This is a String!"
let myInt: Int = 42

var myArray: [Double] = [0.1 , 2.4, 6.5]
var myEmptyArray: [Double] = [Double]()

var myDictionary : Dictionary<String, Int> = ["1": 2, "5": 2]
var myEmptyDictionary : Dictionary<String, Int> = Dictionary<String, Int>()

var myTuple: (Int, String) = (2, "String 2")
var myOtherTuple: (integerValue: Int, stringValue: String) = (integerValue: 2, stringValue: "String 2")











































//Method declaration
func printRegion1 (region:String, punctuation:String){
    println("This is \(region) \(punctuation)")
}

printRegion1("SPARTA", "!!!")






func printRegion2 (region:String, #punctuation:String){
    println("This is \(region) \(punctuation)")
}

printRegion2("SPARTA", punctuation: "!!!")





func printRegion3 (region:String, withPunctuation punctuation:String){
    println("This is \(region) \(punctuation)")
}

printRegion3("SPARTA", withPunctuation: "!!!")






// Paramètre par défaut

func printRegion4(region: String, punctuation: String = "???"){
    println("This is \(region) \(punctuation)")
}

printRegion4("SPARTA", punctuation: "!!!")
printRegion4("SPARTA")









// INOUT
func spartanize(inout string: String){
    string = string.uppercaseString
}

var region: String = "Sparta"
spartanize(&region)
println(region)













































// Enumération

enum Apocalypse: Int {
    case ZombieInvasion
    case AlienInvasion
    case Sharknado
    case EarthQuake
    case Tsunami
    case Explosion
    
    func simpleDescription() -> String {
        switch self {
        case .ZombieInvasion:
            return "This apocalypse is caused by a zombie invasion"
        case .AlienInvasion:
            return "This apocalypse is caused by a alien invasion"
        case .Sharknado:
            return "This apocalyspe is caused by a sharknado"
        case .EarthQuake:
            return "This apocalyspe is caused by a earthquake"
        case .Tsunami:
            return "This apocalyspe is caused by a tsunami"
        case .Explosion:
            return "This apocalypse is just an explosion of our planet"
        default:
            return String(self.rawValue)
        }
    }
}

var apocalypse:Apocalypse = .ZombieInvasion
apocalypse.simpleDescription()












enum BetterApocalypse {
    case Invasion(String)
    case NaturalDisaster(String)
    case Explosion
    
    var simpleDescription: String{
        switch self{
            case Invasion(let intruder):
                return "This apocalypse is caused by a \(intruder) invasion"
            case NaturalDisaster(let disaster):
                return "This apocalyspe is caused by a \(disaster)"
            case .Explosion :
                return "This apocalypse is just an explosion of our planet"
            default:
                return "Oups ! Something went wrong"
        }
    }
}

var zombieApocalypse: BetterApocalypse = .Invasion("Zombies")
println(zombieApocalypse.simpleDescription)











































// Closure - Map

var character1:Array = ["Cercei", "Jaime", "Tyrion"]

func addLastName(firstName:String) -> String {
    return "\(firstName) Lannister"
}

//**
character1.map(addLastName)


//**
var character2:Array = ["Cercei","Jaime","Tyrion"]

character2.map( { (firstName:String)->String in
    return "\(firstName) Lannister"
})


//**
var character3:Array = ["Cercei","Jaime","Tyrion"]

character3.map( { firstName in
    "\(firstName) Lannister"
} )


//**
var character4:Array = ["Cercei","Jaime","Tyrion"]

character4.map({ "\($0) Lannister" })


//**
var character5:Array = ["Cercei","Jaime","Tyrion"]
character5.map(){
    "\($0) Lannister"
}







// Closure - Reduce

var intArray: [Int] = [1,2,3,4]

intArray.reduce(0, combine: +)
intArray.reduce(10, combine: +)







// Closure - Filter

intArray.filter { value in
    if (value % 2) == 0 {
        return true
    } else {
        return false
    }
}













































// Switch
var force: String = "Power"

switch force {
    case "Power","Wisdom","Courage":
        println("This is a triforce")
    case "Bacon":
        println("Hummmmm, bacon")
        fallthrough
    default:
        println("This is not a triforce")
}





var baconForce: String = "Bacon"

switch baconForce {
case "Power","Wisdom","Courage":
    println("This is a triforce")
case "Bacon":
    println("Hummmmm, bacon")
    fallthrough
default:
    println("This is not a triforce")
}








var notATriforceForce: String = "NotATriforce"

switch notATriforceForce {
case "Power","Wisdom","Courage":
    println("This is a triforce")
case "Bacon":
    println("Hummmmm, bacon")
    fallthrough
default:
    println("This is not a triforce")
}




































// Protocols

class Recipe: Printable, BooleanType, SequenceType {
    var ingredients: [String] = [String]()
    
    //Printable
    var description: String {
        return "ingredients: \(self.ingredients.description)"
    }
    
    //BooleanType
    var boolValue: Bool {
        return ingredients.count != 0
    }
    
    //SequenceType
    func generate() -> IndexingGenerator<[String]> {
        return self.ingredients.generate()
    }
}

var grog: Recipe = Recipe()
grog.ingredients.append("Red dye")
grog.ingredients.append("kerosene")
grog.ingredients.append("propylene glycol")

println(grog)  ///

if grog {
    println("YAY!")
}

for ingredient in grog {
    println(ingredient)
}








//Equatable 
func == (lhs: Recipe, rhs: Recipe) -> Bool{
    return true
}

var grog1: Recipe = Recipe()
grog1.ingredients.append("Red dye")
grog1.ingredients.append("kerosene")
grog1.ingredients.append("propylene glycol")

var grog2: Recipe = Recipe()
grog.ingredients.append("kerosene")
grog.ingredients.append("Red dye")
grog.ingredients.append("propylene glycol")

if grog1 == grog2 {
    println("Huzzah !")
}






















































// Generics

func swapTwoInts(inout a: Int, inout b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoStrings(inout a: String, inout b: String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoDoubles(inout a: Double, inout b: Double) {
    let temporaryA = a
    a = b
    b = temporaryA
}



















//***

func swapTwoValues<T>(inout a: T, inout b: T) {
    let temporaryA = a
    a = b
    b = temporaryA
}



var bla: String = "bla"
var bloup: String = "bloup"
swapTwoValues(&bla, &bloup)

println(bla)
println(bloup)

var one: Int = 1
var two: Int = 2
swapTwoValues(&one, &two)

println(one)
println(two)













//**  method<T: Equatable> protocol equatable ??

class BaseObject {
    class func create(dictionary: Dictionary<String, AnyObject>) -> BaseObject {
        
        return BaseObject()
    }
}

class OneObject: BaseObject {
    override class func create(dictionary: Dictionary<String, AnyObject>) -> BaseObject {
        var object: OneObject = OneObject()
        
        // Custom initialization
        
        return object
    }
}

class OneOtherObject: BaseObject {
    override class func create(dictionary: Dictionary<String, AnyObject>) -> BaseObject {
        var object: OneOtherObject = OneOtherObject()
        
        // Custom initialization
        
        return object
    }
}













class ObjectCreator<T: BaseObject>{
    class func createBaseObject(rawArray: [Dictionary<String, AnyObject>]) -> [T]{
        var objectsArray: [T] = [T]()
        var object: T
        
        for rawDict in rawArray{
                object = T.create(rawDict) as T
                objectsArray.append(object)
        }
        
        return objectsArray
    }
}









var rawArray = [Dictionary<String, AnyObject>]()

ObjectCreator<BaseObject>.createBaseObject(rawArray)
ObjectCreator<OneObject>.createBaseObject(rawArray)
ObjectCreator<OneOtherObject>.createBaseObject(rawArray)













































// Operator overloading


class Rule {
    
    var description: String
    var modification: String
    
    init(description: String, modification: String){
        self.description = description
        self.modification = modification
    }
}





prefix operator ~ {}
prefix func ~ (rule: Rule) -> String{
    return "\(rule.description), \(rule.modification)"
}

postfix operator ~~ {}
postfix func ~~ (rule: Rule) -> String{
    return "\(rule.description), \(rule.modification)"
}

var rule: Rule = Rule(description: "All programmers are equal", modification: "but some programmers are more equal than others")

println(rule~~)
println(~rule)






