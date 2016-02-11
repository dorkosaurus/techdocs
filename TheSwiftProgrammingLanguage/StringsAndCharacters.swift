
/*STRINGS */
//Swift contains String and Character types

//these are equivalent
var emptyStringOne=""
var emptyStringTwo = String()

//is a string empty?
var isEmpty = emptyStringOne.isEmpty
print("is empty: \(isEmpty)")

//Strings are copied by value, not reference
var notEmptyStringOne="not empty"
let notEmptyConstantStringTwo=notEmptyStringOne
var notEmptyStringThree=notEmptyStringOne
notEmptyStringThree="not not empty"
print(notEmptyStringOne,notEmptyConstantStringTwo,notEmptyStringThree,separator:"!!!")

//access characters by iterating over character property
var iterateOverMe="My girls are the best"
for character in iterateOverMe.characters{
	print(character)
}

var char:Character = "h"
/*this is illegal
 /* char="hello" */
*/

//append a character to a string
var welcome = "Welcome Vivek"
var ep:Character = "!"
welcome.append(ep)
//this doesn't work since ep and welcome are of different types
//var welcome2 = welcome + ep

/* SWIFT STRINGS BUILT FROM UNICODE SCALARS (21-bit number for character or modifier)
*/

//extended graphene clusters allow for _any_ character representation
var theUSFlagCharacter:Character = "\u{1F1Fa}\u{1F1F8}"
print(theUSFlagCharacter)

/** ACCESS AND MODIFY STRING **/

var stringWithIndex="the quick brown fox jumps over the lazy dog"
print(stringWithIndex.startIndex)
print(stringWithIndex.endIndex)
print(stringWithIndex.endIndex.predecessor().predecessor())
var char2 = stringWithIndex[stringWithIndex.startIndex]
print(char2)

//string indices
var indices = stringWithIndex.characters.indices
for index in indices{
	print("for index= \(index) character=\(stringWithIndex[index])")
}

//insert character at index
stringWithIndex.insert("!",atIndex:stringWithIndex.endIndex)
print(stringWithIndex)

//insert string at index
stringWithIndex.insertContentsOf(" there".characters,at:welcome.endIndex)
print(stringWithIndex)

//remove at index
stringWithIndex.removeAtIndex(welcome.startIndex)
print(stringWithIndex)

//remove a set of characters
let range = stringWithIndex.endIndex.advancedBy(-6)..<stringWithIndex.endIndex
stringWithIndex.removeRange(range)
print(stringWithIndex)

/** 
NOTE THAT hasPrefix and hasSuffix relies upon NSString object behind the 
scenes...does not work on ubuntu 
	/*
	var stringWithPrefixAndSuffix="Help I need somebody"
	if stringWithPrefixAndSuffix.hasPrefix("Help"){
		print("has prefix")
	}
	*/
*/

