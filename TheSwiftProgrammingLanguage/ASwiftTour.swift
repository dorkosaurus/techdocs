var arr = [20,30,40]
var mappedArr = arr.map({
					(number:Int) -> Int in
			let result = 3*number
			return result
		})
print(mappedArr)

arr = [3,4,5];
mappedArr = arr.map({number in 4*number})
print(mappedArr)

mappedArr = arr.map{ $0 * 5 }
print(mappedArr)

class Shape{
		var numberOfSides=0
	let color="red"

	func simpleDescription() -> String{
				return "A \(color) shape with \(numberOfSides) 
sides"
	}
	func complexDescription(numRepeats:Int) -> String{
				let str:String="A \(color) shape with 
\(numberOfSides) sides"
		var newStr:String=""
		for i in 1...numRepeats{
					    newStr += "\t\(i): \(str)\n"
		}
		return newStr
	}
}

var shape = Shape()
shape.numberOfSides=10
print(shape.simpleDescription())
print(shape.complexDescription(5))

class NamedShape{
		var numberOfSides:Int=0

	var name:String

	init(name:String){
				self.name=name
	}

	func simpleDescription()->String{
				return "a shape with \(numberOfSides) sides"
	}
}

var namedShape = NamedShape(name:"square")
print(namedShape.simpleDescription())
class Square: NamedShape{
		var sideLength: Double

	init(sideLength:Double, name:String){
				self.sideLength=sideLength
		super.init(name:name)
		numberOfSides=4
	}

	func area() -> Double{
				return sideLength * sideLength
	}

	override func simpleDescription() -> String{
				return "Square named \(name) with length 
\(sideLength) and area \(area())"
	}
}

var square = Square(sideLength:10,name:"dork")
print(square.simpleDescription())
class Circle:NamedShape{
		var radius:Double
	let PI=3.14
	init(radius:Double,name:String){
				self.radius=radius
		super.init(name:name)
		numberOfSides=1
	}
	func area()->Double{
				return PI*radius*radius
	}
	override func simpleDescription()->String{
				return "I am a circle with radius \(radius)"
	}
}
var circle = Circle(radius:4,name:"Dork2")
print (circle.simpleDescription())
class EqualateralTriangle:NamedShape{
		var sideLength:Double

	init(sideLength:Double,name:String){
				self.sideLength=sideLength
		super.init(name:name)
		super.numberOfSides=3
	}
	var perimeter:Double{
				get{
								return 
3*sideLength
		}
		set{
						sideLength = newValue / 3.0
		}
	}
	override func simpleDescription()->String{
				return "triangle"
	}
}

var triangle = EqualateralTriangle(sideLength:10,name:"mine")
print(triangle.perimeter)
triangle.perimeter=3
print(triangle.sideLength)
class TriangleAndSquare{
		var triangle:EqualateralTriangle{
					willSet{
									square.sideLength=newValue.sideLength
		}
	}
	var square:Square{
				willSet{
								triangle.sideLength=newValue.sideLength
		}
	}
	init(size:Double,name:String){
				square = Square(sideLength:size,name:name)
		triangle = EqualateralTriangle(sideLength:size,name:name)
	}
}
var triangleAndSquare = TriangleAndSquare(size:10,name:"Bhajalo")
print("square: \(triangleAndSquare.square.sideLength) triangle: 
      \(triangleAndSquare.triangle.sideLength)")
triangleAndSquare.square = Square(sideLength:20,name:"dorkoman")
print("square: \(triangleAndSquare.square.sideLength) triangle: 
      \(triangleAndSquare.triangle.sideLength)")
enum Rank:Int{
		case Ace=1
	case Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten
	case Jack,Queen,King
	func simpleDescription()->String{
				switch self{
								case .Ace:
													return 
"ace"
			case .Jack:
								return "jack"
			case .King:
								return "king"
			case .Queen:
								return "queen"
			default:
								return 
String(self.rawValue)
		}
	}
}
var ace = Rank.Ace
var aceValue = ace.rawValue
print("ace: \(ace) value:\(aceValue)")
print("ace:\(ace.simpleDescription())")

if let convertedRank = Rank(rawValue:3){
		let threeDescription = convertedRank.simpleDescription()
}enum Suit:Int{
		case Spades=1
	case Hearts, Diamonds, Clubs
	func simpleDescription()->String{
		switch self{
			case .Spades:
				return "spades"
			case .Hearts:
				return "hearts"
			case .Diamonds:
				return "diamonds"
			case .Clubs:
				return "clubs"
		}
	}
	func color()->String{
		switch self{
			case .Spades:
				return "black"
			case .Hearts:
				return "red"
			case .Diamonds:
				return "red"
			case .Clubs:
				return "black"
		}
	}
}
let hearts = Suit.Hearts
print(hearts.simpleDescription())
print(hearts.color())
struct Card{
		var rank: Rank
	var suit: Suit
	func createDeckOfCards()->[Card]{
				var deck = [Card]()
		var rankIndex=1
		while let rank=Rank(rawValue:rankIndex){
						rankIndex+=1
			var cardIndex=1
			while let suit = Suit(rawValue:cardIndex){
								cardIndex+=1
				let card = Card(rank:rank,suit:suit)
				deck.append(card)

			}
		}
		return deck
	}
	func simpleDescription()->String{
				return "The \(rank.simpleDescription()) of 
\(suit.simpleDescription()) is \(suit.color())"
	}
}
var card = Card(rank:Rank.Three,suit:Suit.Hearts)
print(card.simpleDescription())
var deck = card.createDeckOfCards()
print("# cards in a deck: \(deck.count)")
enum ServerResponse{
	case Result(String,String)
	case Error(String)
}
let success = ServerResponse.Result("8am","4pm")
switch success{
	case .Result(let sunrise,let sunset):
		print("success! sunrise at \(sunrise) sunset at \(sunset)")
	case let .Error(error):
		print("errror: \(error)")
}

var failure = ServerResponse.Error("Uh Oh!")
switch failure{
	case .Result(let sunrise,let sunset):
		print("success!")
	case .Error(let error):
		print(error)
}
protocol ExampleProtocol{
	var simpleDescription: String{ get}
	mutating func adjust()
}
class SimpleClass: ExampleProtocol{
	var simpleDescription: String = "A simple description"
	var anotherProperty:Int=42
	func adjust(){
		simpleDescription+="\(anotherProperty) \(simpleDescription)"
		anotherProperty+=1
	}
}
simClass.simpleDescription="duh"
simClass.adjust()
print(simClass.simpleDescription)

enum SuperHeroes:ExampleProtocol{
	case MightyMouse,SuperMan,BatMan,WonderWoman
	var simpleDescription:String{
		get{
			switch self{
				case .MightyMouse:
					return "Mighty Mouse!"
				case .SuperMan:
					return "Superman!"
				case .BatMan:
					return "Batman!"
				case .WonderWoman:
					return "Wonder Woman!"
			}
		}
	}
	mutating func adjust()->(){
		switch self{
				case .MightyMouse:
					self=SuperHeroes.SuperMan
				case .SuperMan:
					self=SuperHeroes.BatMan
				case .BatMan:
					self=SuperHeroes.WonderWoman
				case .WonderWoman:
					self=SuperHeroes.MightyMouse
			}
	}
}
var superHero = SuperHeroes.BatMan
print(superHero.simpleDescription)
superHero.adjust()
print(superHero.simpleDescription)

extension Int:ExampleProtocol{
	var simpleDescription:String{
		get{
			return "The number \(self)"
		}
		mutating func adjust()->(){
			self+=42
		}
	}
}
var seven:Int = 7
print(seven.simpleDescription)
seven.adjust()
print(seven.simpleDescription)

extension Double{
	func absoluteValue()->Double{
		return abs(self)
	}
}
var negativeEightPointNine:Double = -8.9
print(negativeEightPointNine)
print(negativeEightPointNine.absoluteValue())

var elems=["abcd","efgh","ijhklmnop"]
print("A","B","C","D",separator:"!!!",terminator:"###\n")
