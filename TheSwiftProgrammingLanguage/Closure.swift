/*
  - global functions are closures with names but don't capture any values
  - nested functions are closures with names and can capture values from the 
    enclosing function
  - closure expressions are unnamed and capture values from the surrounding 
    context
*/
/*CLOSURE EXPRESSIONS */

//goal is to sort this array
var names = ["jim", "pauline" , "vivek" , "vikrum" , "jenny" , "raj" , "suresh" , "geetha" , "sophia", "emma", "krishna" , "vihaan" , "nina"]

//option 1: created a sort function and pass it to the sort routine
func backwards(a:String,_ b:String)->Bool{
	return a>b
}
var result = names.sort(backwards)
print("names: (\names) sortedNames: \(result)")

//option 2:  create a closure expression
result = names.sort(
		      {
			 (s1:String,s2:String)->Bool in
			 return s1>s2
		      }
	 )
//option 3:  let Swift infer type from context
result = names.sort(  { s1,s2 in return s1>s2 } )

//option 4:  let Swift create an implicit return
result = names.sort(  { s1,s2 in s1>s2 } )

//option 5: use shorthand argument names
result = names.sort( { $0 > $1} )

//option 6:  use String's operator function '>' which is defined as 
//(String,String)->Bool
result = names.sort(>)

/** TRAILING CLOSURES **/
func someFuncThatTakesAClosure(closure: ()->Void){
	print("do nothing")
	closure()
}
//using this function _without_ a trailing closure
someFuncThatTakesAClosure(
			   {
				   ()->Void in
				   print("in non-trailing closure")
			   }
			 )
//here's a trailing closure
someFuncThatTakesAClosure(){
	()->Void in
	print("in a trailing closure")
}

//heres the sort, re-written as a trailing closure
result = names.sort(){$0>$1}

//if the trailing closure is the only argument, you can make this even briefer
result = names.sort{$0>$1}

//trailing closure applied to a mapping function
var digitNames = [
	0:"Zero", 1:"One", 2:"Two",   3:"Three", 4:"Four",
	5:"Five", 6:"Six", 7:"Seven", 8:"Eight", 9:"Nine"]

var numbers = [101,232,4621]

let strings = numbers.map(){
	(number) -> String in 

	var number=number
	var output=""
	while(number>0){
		var digit = number % 10
		output = digitNames[digit]! + output
		number /= 10
	} 

	return output
}
print(numbers)
print(strings)

//closures capturing values from context
func makeIncrementer(add:Int)-> ()->Int{
	var runningTotal = 0
	func incrementer() -> Int{
		runningTotal += add
		return runningTotal
	}
	return incrementer
}

var incrementByTen = makeIncrementer(10)
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())

//Non-escaping closures- you are telling the compiler this closure
//will not be used outside of this function

var closureArr :[ ()->Void ] = []
func funcWithNoEscapeClosure(@noescape closure:  ()->Void){
	closure()
}
func funcWithEscapeClosure(closure:  ()->Void){
	closureArr.append(closure)
}
funcWithNoEscapeClosure{print("DORK")}
funcWithEscapeClosure{ print("DORKME")}
funcWithEscapeClosure{ print("DORKME2")}
funcWithEscapeClosure{ print("DORKME3")}

for closure in closureArr{
	closure()
}

/*AUTOCLOSURES */

//closures can be used to delay evaluation

var customersInLine=["vivek","vikrum","sophia","emma","jenny"]
print("# customers in line: \(customersInLine.count)")
var checkout = {customersInLine.removeAtIndex(0)}
print("# customers after creating closure: \(customersInLine.count)")
checkout()
print("# customers after calling closure: \(customersInLine.count)")

//autoclosure example- you do not need the explicit closure syntax
func serveCustomer(@autoclosure customerProvider: ()->String){
	print("now serving \(customerProvider())")
}
serveCustomer(  customersInLine.removeAtIndex(0) );
