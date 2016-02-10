
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


