//COMMENTS
/* This is a comment
	/* This is a nested comment */
*/

//NAMING
//naming using keywords use `backtick`
var `switch`="dork"
let `if`="is"

//note the use of the (_,separator:,terminator:) in print
print(`switch`,`if`,separator:"\t",terminator:"\nUH-YO\n")

let useSemicolons:String="dork1";//legal but not required
let semi2="dork2";let int1=4;var double3=3.2;//semicolons are required

/* INTEGER TYPES  */

//UNSIGNED 

//8-bit unsigned
var eightBitUnsignedMinValue=UInt8.min
var eightBitUnsignedMaxValue=UInt8.max
print("8 bit unsigned (min,max):(\(eightBitUnsignedMinValue),\(eightBitUnsignedMaxValue))")

//16-bit unsigned
var sixteenBitUnsignedMinValue=UInt16.min
var sixteenBitUnsignedMaxValue=UInt16.max
print("16 bit unsigned (min,max):(\(sixteenBitUnsignedMinValue),\(sixteenBitUnsignedMaxValue))")

//32-bit unsigned
var thirtytwoBitUnsignedMinValue=UInt32.min
var thirtytwoBitUnsignedMaxValue=UInt32.max
print("32 bit unsigned (min,max):(\(thirtytwoBitUnsignedMinValue),\(thirtytwoBitUnsignedMaxValue))")

//64-bit unsigned
var sixtyfourBitUnsignedMinValue=UInt64.min
var sixtyfourBitUnsignedMaxValue=UInt64.max
print("64 bit unsigned (min,max):(\(sixtyfourBitUnsignedMinValue),\(sixtyfourBitUnsignedMaxValue))")

//Unsigned int without specifying is equal to the 
//largest type your platform can handle
var unsignedMinValue=UInt.min
var unsignedMaxValue=UInt.max
print("unsigned (min,max):(\(unsignedMinValue),\(unsignedMaxValue))")

//SIGNED

//8-bit
var eightBitSignedMinValue=Int8.min
var eightBitSignedMaxValue=Int8.max
print("8 bit signed (min,max):(\(eightBitSignedMinValue),\(eightBitSignedMaxValue))")

//16-bit Signed
var sixteenBitSignedMinValue=Int16.min
var sixteenBitSignedMaxValue=Int16.max
print("16 bit Signed (min,max):(\(sixteenBitSignedMinValue),\(sixteenBitSignedMaxValue))")

//32-bit Signed
var thirtytwoBitSignedMinValue=Int32.min
var thirtytwoBitSignedMaxValue=Int32.max
print("32 bit Signed (min,max):(\(thirtytwoBitSignedMinValue),\(thirtytwoBitSignedMaxValue))")

//64-bit Signed
var sixtyfourBitSignedMinValue=Int64.min
var sixtyfourBitSignedMaxValue=Int64.max
print("64 bit Signed (min,max):(\(sixtyfourBitSignedMinValue),\(sixtyfourBitSignedMaxValue))")

//Signed Int (default type and recommended use)
var signedMinValue=Int.min
var signedMaxValue=Int.max
print("signed (min,max):(\(signedMinValue),\(signedMaxValue))")

/* FLOATING POINT TYPES */

//float
/* /* THIS DOES NOT WORK BECAUSE FLOATING POINTS IMPORT FROM THE C float.h 
 * HEADER */
var minFloatValue=Float.min
var maxFloatValue=Float.max
print("float (min,max): (\(minFloatValue),\(maxFloatValue))")
*/
var `float`:Float=24
var `double`:Double=36
print("\(`float`) \(`double`)")

/* TYPE SAFETY */
//implicit assignment of int
var implicitInt=42

//implicit assignment of Double (default)
var implicitDouble=42.0

//explicit assignment of Float (not implicitly assigned).  Why?
var explicitFloat:Float=42.0

/* YOU CANNOT DO THIS WITHOUT THE INTEPRETER COMPLAINING
	/* var val = implicitDouble+implicitInt */
*/

//combining Int and Double generates a Double
var implicitDoubleFromCombination=12 + 13.5

print("implicit values: int(\(implicitInt)) double(\(implicitDouble))", 
      "int+double=double(\(implicitDoubleFromCombination))")

/* NUMERIC LITERALS */

//INTEGERS

//integer represented as decimal
var dec=1234

//integer represented as binary (note the 0b prefix)
var bin=0b10001

//integer represented as octal (note the 0o prefix)
var oct=0o21

//integer represented as hexadecimal (note the 0x prefix)
var hex=0x11

//FLOATING POINTS

//decimal representation of floating point
var decFP=12.1875

//hex representation of floating point
var hexFP=0xC

//decimal+exponent representation of floating point
var expFP=1.21875e1

//FORMATTING AVAILABLE FOR LEGIBILITY

//pad with zeros
let paddedDouble = 0012.1875

//underscores
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_001

/*NUMERIC TYPE CONVERSION*/

//When to use non-standard integer types
/*
Use Int as your default integer type except when the 
others are really needed:
1. Explicitly sized data from an external data source.
2. Improvements in performance.
3. Memory optimization
4. Other optimizations
*/

//what happens when a number does not fit into a type
/* 
let cannotBeNegative:UInt8 = -1
let tooBig:Int8 = Int8.max + 1
*/

//INTEGER CONVERSION
//twoThousandOne is of type UInt16(how to prove this?)
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandOne = twoThousand + UInt16(one)

//INT <-> FLOAT CONVERSION
let three=3
let pointOneFour = 0.14
let pi = Double(three)+pointOneFour
let integerPi = Int(pi)

//CONVERSION OF NUMERIC LITERALS
/* this is converted to a Double without error
because the literals aren't assigned to a type */

let implicitPi = 3 + 0.14 

/* TYPE CONVERSION */
typealias AudioSample = UInt16

var myAudioSample:AudioSample = 3
var maxAmplitudeFound = AudioSample.min

/** BOOLEANS **/
let turnipsAreDelicious=false
let orangesAreOrange=true
if turnipsAreDelicious{
       print("turnips...yummy")
} else{
	print("turnips....ewww")
}	

/* can't subsitute numbers for Booleans
	this won't compile:
	/* 
	   let i=1
	   if i{ //do something
	   }	   
	*/
*/
//this is fair game though because it emits a Boolean
let i=1
if i==1{
	print("i==1")
}

/** TUPLES **/
//basic tuple can be of any type
let http404Error = (404,"Not found")

//decompose the tuple 
let(statusCode,error) = http404Error
print("response: \(statusCode), \(error)")

//decompose to a single named variable
let(justTheStatusCode,_)=http404Error
print("Just the status code: \(justTheStatusCode)")

//access elements using index positions
print("response: \(http404Error.0), \(http404Error.1)")

//name elements of tuple when defined
let http200Status = (statusCode:200,description:"OK")
print("response: \(http200Status.statusCode) ", 
      "\(http200Status.description)")


