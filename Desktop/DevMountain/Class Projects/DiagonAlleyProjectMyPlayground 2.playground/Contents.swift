import UIKit

//Part One
let firstName = "Kyle"
let lastName = "Franklin"
var age = 27
let birthDay = 18
var wandLength = 9
let preHouse = "Ravenclaw"
let charTrait = "Intelligent"
var hadEnoughOfHPRefrences = false

//Part Two
var goldVault = 150.0
goldVault -= 24.3
goldVault -= 45
goldVault += 300
goldVault *= 2
goldVault *= 0.90

//Part Three

var beak = "black"
var feathers = "white"

if (beak == "black" && feathers == "white") {
    print("This one is mine")
} else {
    print("Pass")
}


var broomSponsoredBy = "holyheadHarpiesSponsor"

if (broomSponsoredBy == "holyheadHarpiesSponsor"){
    print("Buy")
}else{
    print("No Bueno")
}
var student = "loyal"
if (student == "cunning and ambitious"){
    print("Slytherine")
}else if (student == "brave"){
    print("Griffondor")
}else if (student == "loyal"){
    print("HufflePuff")
}else{
    print("Ravenclaw")
}



//Part Four


func buyFizzingWhizzbees (int:Double){
    
   goldVault -= (int * 2)
}

buyFizzingWhizzbees(int: 10)

print("current monies \(goldVault)")


func buyChocoFrogs (fam: Double) {
    
    let cost = (fam * 3.0)
    
    if (cost < goldVault ){
        
        print("We'll take the lot!")
        
        goldVault-=cost
    }else{
        
        print("No thanks, I'm all set.")
    }
}

buyChocoFrogs(fam: 10)

//Part Five

var bookPrices = [12, 12, 22, 10, 8, 17]

for i in bookPrices{
    
    if (i > 15){
        print("This book is expensive")
    }else{
        print("This book isn't too bad.")
    }
}

var totalPixiePuff = 0

while(goldVault >= 3){
    goldVault -= 3
    totalPixiePuff += 1
}
print("You bought \(totalPixiePuff) Pixie Puffs")
