
import Foundation

/* Please give me feedback

 - write me what i can do better
 - maybe i can use less code?
 - please be honest with me :)
 
 
*/



// ----------------------------------------FUNCTIONS------------------------------

func choiceAction () -> String {
    print("\nWhat operation would you like to perform? \n")
    print("Select a number: \n1 -> division \n2 -> multiplication \n3 -> subtraction \n4 -> addition")
    let userChoice = readLine()!
    
    return userChoice
}

func checkIfActionCorrext () {
    if infoAboutChoice[userChoice] == nil {
        repeat {
            print("\nWRONG CHOICE - choose the right number from 1 to 4 \n")
            userChoice = choiceAction()
        } while infoAboutChoice[userChoice] == nil
    }
    
    print("\nYour choice is: \(infoAboutChoice[userChoice]!), so let's get to work \n")
}

func userNumberOne() -> String {
    print("Enter the first number")
    let userFirstNumber = readLine()!
    return userFirstNumber

}

func checkUserNumberOne(){
    if userFirstNumberAsDouble == nil {
        
        repeat {
            print("\nWRONG NUMBER - \(userFirstNumber) is not a number choose number\n")
            userFirstNumber = userNumberOne()
            userFirstNumberAsDouble = Double(userFirstNumber)
        } while userFirstNumberAsDouble == nil
    }
}

func userNumberTwo () -> String{
    print("Enter the second number")
    let userSecondNumber = readLine()!
    return userSecondNumber
}

func checkUserNumberTwo () {
    if userSecondNumberAsDouble == nil {
        
        repeat {
            print("\nWRONG NUMBER - \(userSecondNumber) is not a number choose number\n")
            userSecondNumber = userNumberTwo()
            userSecondNumberAsDouble = Double(userSecondNumber)
        } while userSecondNumberAsDouble == nil
    }
}

func division (firstNumber: Double, secondNumber: Double) -> Double {
    let result = firstNumber / secondNumber
    return result
}

func multiplication (firstNumber: Double, secondNumber: Double) -> Double {
    let result = firstNumber * secondNumber
    return result
}

func subtraction (firstNumber: Double, secondNumber: Double) -> Double {
    let result = firstNumber - secondNumber
    return result
}

func addition (firstNumber: Double, secondNumber: Double) -> Double {
    let result = firstNumber + secondNumber
    return result
}




func calculation (){
    var result = 0.0
    switch userChoice {
    case "1":
        if userSecondNumberAsDouble! == 0 {
            print("\n!!!! Cannot be divided by 0 !!!!!")
        } else {
            result = division(firstNumber: userFirstNumberAsDouble!, secondNumber: userSecondNumberAsDouble!)
            let threePlacesResult = Double(round(1000 * result) / 1000)
            print("\nDivision: \(userFirstNumberAsDouble!) / \(userSecondNumberAsDouble!) = \(threePlacesResult)")
        }
        
    case  "2":
        result = multiplication(firstNumber: userFirstNumberAsDouble!, secondNumber: userSecondNumberAsDouble!)
        let threePlacesResult = Double(round(1000 * result) / 1000)
         print("\nMultiplication: \(userFirstNumberAsDouble!) * \(userSecondNumberAsDouble!) = \(threePlacesResult)")
    case "3":
        result = subtraction(firstNumber: userFirstNumberAsDouble!, secondNumber: userSecondNumberAsDouble!)
        let threePlacesResult = Double(round(1000 * result) / 1000)
        print("\nSubtraction: \(userFirstNumberAsDouble!) - \(userSecondNumberAsDouble!) = \(threePlacesResult)")
    case "4" :
        result = addition(firstNumber: userFirstNumberAsDouble!, secondNumber: userSecondNumberAsDouble!)
        let threePlacesResult = Double(round(1000 * result) / 1000)
        print("\nAddition: \(userFirstNumberAsDouble!) + \(userSecondNumberAsDouble!) = \(threePlacesResult)")
        
    default: break
        
    }
    
}


func choiceRepeatOrExit () -> String {
    print("\nYou want to take the next action: \nY: YES \nN: NO")
    let userChoice = readLine()!
    
    return userChoice
}

// -------------------------------- CHOICE ACTIONS ---------------------

print("WELCOME")


var userChoice = choiceAction()


var infoAboutChoice = [
"1": "Division",
"2": "Multiplication",
"3": "Subtraction",
"4": "Addition"]

checkIfActionCorrext()


//------------------------------------ NUMBER INPUT------------


var userFirstNumber = userNumberOne()

var userFirstNumberAsDouble = Double(userFirstNumber)
    checkUserNumberOne()





var userSecondNumber = userNumberTwo()
var userSecondNumberAsDouble = Double(userSecondNumber)
    checkUserNumberTwo()



//--------------------------------------- calculation of the result --------------------

calculation()
var repeatOrExit = choiceRepeatOrExit()

var exitOrNO = [
"y": "YES",
"Y": "YES",
"YES": "YES",
"Yes": "YES",
]

// -------------------------------------- ASK FOR REPEAT -------------------------------
if exitOrNO[repeatOrExit]?.description == "YES" {
     
    repeat {
    userChoice = choiceAction()
    checkIfActionCorrext()
    userFirstNumber = userNumberOne()
    userFirstNumberAsDouble = Double(userFirstNumber)
    checkUserNumberOne()
    userSecondNumber = userNumberTwo()
    userSecondNumberAsDouble = Double(userSecondNumber)
    checkUserNumberTwo()
    calculation()
    repeatOrExit = choiceRepeatOrExit()
        

    } while exitOrNO[repeatOrExit]?.description == "YES"
    print("Thank you for your cooperation BYE BYE")

} else {
    print("Thank you for your cooperation BYE BYE")
}







