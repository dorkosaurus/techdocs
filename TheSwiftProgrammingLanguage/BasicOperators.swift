//assignment operator for tuples
let (x,y)=(1,2)

//string concatenation
var helloWorld = "hello" + "world"

//modulus operators work on floating point
var remainder = 8%2.5 //should equal 0.5
print("8  modulo 2.5 = \(remainder)")

//increment and decrement operators are allowed but deprecated in 3.0
var a=2
/*
++a
a++
*/
//ternary conditional operator (only cuz I've never called it that)
var answer = true ? "true" : "false"

/*NIL COALESCING OPERATOR*/
let defaultColorName="red"
var userDefinedColorName: String?

/* next line is equivalent to 
  /* var colorNameToUse = (userDefinedColorName!=nil)
			  ? userDefinedColorName!
			  : defaultColorName
  */
*/
var colorNameToUse = userDefinedColorName ?? defaultColorName
print("when userDefinedColorName=\(userDefinedColorName) the color is ",
      "\(colorNameToUse)")

userDefinedColorName="purpura"
colorNameToUse = userDefinedColorName ?? defaultColorName
print("when userDefinedColorName=\(userDefinedColorName) the default color is", 
      "\(colorNameToUse)")

/*RANGE OPERATORS */

//closed range operator: contains the 1 and 5
for index in 1...5{
	print("closed range operator, index=\(index)")
}
/* This does not work without the compiler spewing exceptions
	/*
	for (index,index2) in 1...5{
		print("closed range operator dos, index=\(index), index2=\(index2)")
	}
	*/
*/

//half range operator: contains the 1 but not the 5
for index in 1..<5{
	print("half range operator, index=\(index)")
}

/*LOGICAL OPERATORS*/

//swift logical operators are left associative
var z=true,b=false,c=true,d=false

var e = z && b || c && d
print("z && b || c && d  equals \(e)")

e = z && c || b && d
print("z && c || b && d equals \(e)")

e = !z && !c && !b && !d
print("!z && !c && !b && !d equals \(e)")

