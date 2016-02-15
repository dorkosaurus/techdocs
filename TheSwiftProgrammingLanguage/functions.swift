/*FUNCTION TYPE */
//consist of parameter types and return types


//first func example
func sayHello(personName:String,shortName:String,title:String)->String{
	return "hello \(title) \(personName), aka \(shortName)" 
}
print(sayHello("Vivek",shortName:"DorkMan!",title:"Mr"))

//example of func with no return
func sayHello()->(){
	print("returns the Void type, described with '()'")
}
sayHello()

//example of re-using funcs I like
func printAndCount(stringToPrint: String) -> Int{
	print(stringToPrint)
	return stringToPrint.characters.count
} 

func printWithoutCount(stringToPrint: String) -> (){
	printAndCount(stringToPrint)
}

printWithoutCount("Vivek")
print(printAndCount("Vivek"))


//return multiple values with tuples
func returnMultiple(param1:Int,param2:Int)->(ret1:Int,ret2:Int){
	return (2,3)
}
print( returnMultiple(1,param2:2)  )


//optional return tuple
func returnOptionalMultiple(param1:[Int])->(ret1:Int,ret2:Int)?{
	if param1.isEmpty{
		return nil
	}
	else{
		return (1,2)
	}
}
var ret = returnOptionalMultiple([])
print(ret)
if let ret = returnOptionalMultiple([1]){
	print("returnoptionalmultiple")
}
/* I don't understand why only constants can be bound this way.  this does not work:
	 /*
		if var ret = returnOptionalMultiple([1]){
			print(ret)
		}
	*/
*/

//internal and external parameter names
func sayHello(to person: String, and anotherPerson:String) -> String{
	return "hello \(person) and \(anotherPerson)" 

}
print( sayHello(to:"Vivek",and:"Vikrum") )

//omitting the external parameter name

func hola(firstParameterName:Int, _ secondParameterName:String) -> String{
	return "hola \(firstParameterName), \(secondParameterName)"
}
print( hola(1,"vivek") )

//setting default values for parameters
func hola2(firstParameterName:Int, _ secondParameterName:String="DorkMan!") -> String{
	return hola(firstParameterName,secondParameterName)
}

print( hola2(1) )

//variadic parameters
func hola3(names:String ...)->String{
	var greeting=""
	for name in names{
		greeting += "Hola \(name)! "
	}
	return greeting
}
print( hola3("Vivek","Vikrum","Jenny","Sophia","Emma")  )

//function parameters are constant.  this shouldn't work...and doesn't
/*
	func testFuncConstantParams(name:String,age:Int)->(){
		name="dork1"
	}
*/

//in-out functions
func swapTwoNumbers(inout a:Int, inout _ b:Int)->(){
	let temp = a
	a = b
	b = temp
}
var a=1,b=2
print("before swap a=\(a), b=\(b)")
swapTwoNumbers(&a,&b)
print("after swap a=\(a), b=\(b)")

/* FUNCTION TYPES */

//functions are like any other type

var varFuncType: (Int,Int)->String
func duh(a:Int,_ b:Int)->String{
	return "\(a) \(b)"
}
varFuncType=duh
print( duh(1,2) )

/*FUNCTIONS CAN ACT AS PARAMETERS */
func printMathResult(mathFunction: (Int,Int)->Int, _ a:Int, _ b:Int){
	print("Result: \(mathFunction(a,b))")
}
func addTwoIntegers(a:Int, _ b:Int)->Int{
	return a+b
}
printMathResult(addTwoIntegers,4,5)

/*FUNCTIONS CAN BE RETURN VALUES */
func stepForwards(input:Int)->Int{
	return input+1
}
func stepBackwards(input:Int)->Int{
	return input-1
}
func chooseStepFunction(backwards:Bool)-> (Int)->Int{
	return backwards ? stepBackwards : stepForwards
}
var stepFunction = chooseStepFunction(false)
print(stepFunction(100))

/* FUNCTIONS CAN BE NESTED AND THIS PROTECTS THEM FROM EXTERNAL SCRUTINY.
   BY DEFAULT, NON-NESTED FUNCTIONS ARE 'GLOBAL' */
func chooseStepFunc2(backwards:Bool)->  (Int)->Int  {
	func stepForwards2(input:Int)->Int{
		return input+1
	}
	func stepBackwards2(input:Int)->Int{
		return input-1
	}
	return backwards ? stepBackwards2 : stepForwards2
}
stepFunction = chooseStepFunc2(false)
print(stepFunction(100))
