/* FOR LOOPS */

//ranges
for index in 1...100{
	print(index)
}

for index in 1..<100{
	print("index2:\(index)")
}

//underscore makes the element unavailable
for _ in 1...100{
}

/*WHILE LOOOPS*/

var inLoop=false
while(inLoop){
	inLoop=false
	print("inLoop's new value=\(inLoop)")
}
inLoop=false
repeat{
	print("inLoop's new value=\(inLoop)")
}while(inLoop)

/**CONDITIONALS **/
inLoop=false
if inLoop{
	print("inLoop")
}else if inLoop{
	print("else if InLoop")
} else {
	print ("else InLoop")
}

//SWITCH STATEMENTS

//tuples
let betweenNegativeAndPositiveTwo = -2...2
let somePoint=(1,1)
switch somePoint{
	case(0,0):
		print("Origin")
	case(_,0):
		print("x axis")
	case(0,_):
		print("y axis")
	case(betweenNegativeAndPositiveTwo ,betweenNegativeAndPositiveTwo ):
		print("between \(betweenNegativeAndPositiveTwo)")
	default:
	       print("outside the box")
}	

//value binding
let anotherPoint=(2,0)
switch anotherPoint{
	case(let x,0):
		print("on the x axis")
	case(0,let y):
		print("on the y axis")
	case let(x,y):
		print("somewhere not on the x or y axis")
}

/** CONTROL TRANSFER STATEMENTS **/

//applying the 'continue' statement

let sentenceIn = "The Rain in Spain Stays Mainly in the plane"
var sentenceOut=""
for letter in sentenceIn.characters{
	switch letter{
		case "a","A","e","E","i","I","o","O","u","U","y","Y":
			continue //next iteration of for loop
		default:
			sentenceOut.append(letter)
	}
}
print(sentenceIn)
print(sentenceOut)

//break statement covered but it's the same as other languages

//applying the fallthrough statement
let integerTest = 3
var description="the number \(integerTest) is"
switch integerTest{
	case 2,3,5,7,11,13,17,19:
		description+=" a prime number and " 
		fallthrough
	default:
		description+=" an integer" 
}
print(description)

//labeled statement support that looks similar to what i've seen elsewhere

//guard statement - improves legibility by keeping code that usually gets 
//executed more visible
func testGuard()->(){
	var person = ["city":"San Francisco"]
	guard let location = person["location"] else{
		print("could not find a location attribute for person")
		return
	}
}

//check for api availability...this also works with guard statements
if #available(iOS 9, OSX 10.10,*){
	print(">=iOS 9, >=OSX 10.10 or some unnamed platform")
}
else{
       print("< iOS 9, < OSX 10.10")
}	


