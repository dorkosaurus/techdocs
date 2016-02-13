/* USE CONSTANT COLLECTIONS WHENEVER POSSIBLE TO LET THE COMPILER OPTIMIZE */

var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items")

someInts.append(3)
print("someInts is of type [Int] with \(someInts.count) items")

someInts=[]
print("someInts is of type [Int] with \(someInts.count) items")

//create array with inital values
let threeDoubles = [Double](count:3,repeatedValue:0.00)
print("threeDoubles is of type [Double] with \(threeDoubles.count) items")

//add arrays
let anotherThreeDoubles = [Double](count:3,repeatedValue:1.1)
let sixDoubles = threeDoubles + anotherThreeDoubles
print("sixDoubles is of type [Double] with \(sixDoubles.count) items")

//infer array creation
var addArray = ["one","two","three"]
addArray += ["four"]
print(addArray)

//change contents of array via range operator
addArray[0...2]=["oranges","apples","bananas"]
print(addArray)


//change content of array from 1/2 range operator
addArray[1..<3]=["mangoes","tangerines"]
print(addArray)

//insert
addArray.insert("gravy",atIndex:1)
print(addArray)

//remove at index
var item = addArray.removeAtIndex(0)
print(addArray)
print(item)

//remove last eleme
var lastItem = addArray.removeLast()
print(addArray)
print(lastItem)

//iterate
for item in addArray{
	print(item)
}

for(index,item) in addArray.enumerate(){
	print("\(index):\(item)")
}


/** SETS **/

//unique elements only
var set = Set<String>()
set.insert("c")
set.insert("z")
set.insert("y")
print("# set elements = \(set.count)")
set.insert("a")
print("# set elements after re-inserting 'a': \(set.count)")

//instantiate set for array literal
var setFromArray:Set<String> = ["a","b","c","d"]
print("set from array literal containss \(setFromArray.count) elements")
setFromArray = ["a","a","c","b","d"]
print("set from array literal with a single duplicate element contains \(setFromArray.count) elements")

//instantiate set from array literal but type is inferred
var setFromArrayTypeInferred:Set = ["a","b","c","d"]
print("set from array literal where type inferred \(setFromArrayTypeInferred.count) elements")

//is set empty
var isSetEmpty = setFromArray.isEmpty
print("setFromArray isEmpty? \(isSetEmpty)")

//remove
var removedString = set.remove("a")
print("removedString: \(removedString)")

//does a set contain a string?
var setContains = set.contains("a")
print("does set contain 'a'? \(setContains)")

//iterate
for elem in set{
	print(elem)
}

var sortedSetArray:Array = set.sort()
for elem in sortedSetArray{
	print(elem)
}

/* SET OPERATIONS...way cool */
var set1:Set = ["a","b","c","d"]
var set2:Set = ["c","d","e","f"]

//intersecting
var intersectingSet = set1.intersect(set2)
print("intersecting set")
for elem in intersectingSet{print(elem)}


//in either set but not both
let exclusiveOrSet = set1.exclusiveOr(set2)
print("exclusive or set")
for elem in exclusiveOrSet{print(elem)}

//union
let unionSet = set1.union(set2)
print("union set")
for elem in unionSet{
	print(elem)
}

//subtract
let subtractSet = set1.subtract(set2)
print("subtract set")
for elem in subtractSet{
	print(elem)
}

/** DICTIONARIES **/

var dictionary = [Int:String]()
dictionary[1]="one"
dictionary[2]="two"
print(dictionary)

dictionary = [1:"ten",2:"nine",3:"eight"]
print(dictionary)

var implicitDictionary = [1:1.0,2:2.0,3:3.0]
print(implicitDictionary)

print(implicitDictionary.count)

//update
implicitDictionary[1]=10.0

//replace old value...note that oldValue is an Optional
var oldValue = implicitDictionary.updateValue(3.0,forKey:3)
print(oldValue)
print(implicitDictionary)

//remove key/value pair
implicitDictionary[3]=nil
print(implicitDictionary)

for(key,value) in dictionary{
	print(key,":",value)
}

var keysArr = dictionary.keys
for key in keysArr{
	print(key)
}

var valuesArr = dictionary.values
print(valuesArr)
for value in valuesArr{
	print(value)
}
