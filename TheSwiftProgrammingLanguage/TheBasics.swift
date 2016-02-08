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

//Signed Int (default type and recommended use)
var signedMinValue=Int.min
var signedMaxValue=Int.max
print("signed (min,max):(\(signedMinValue),\(signedMaxValue))")

//Unsigned int without specifying is equal to the largest type your platform 
//can handle
var unsignedMinValue=UInt.min
var unsignedMaxValue=UInt.max
print("unsigned (min,max):(\(unsignedMinValue),\(unsignedMaxValue))")

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

//integer represented as decimal
var dec=1234

//integer represented as binary (note the 0b prefix)
var bin=0b10001

//integer represented as octal (note the 0o prefix)
var oct=0o21

//integer represented as hexadecimal (note the 0x prefix)
var hex=0x11

