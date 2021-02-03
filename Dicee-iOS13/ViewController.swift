

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!


    @IBAction func btnRollPressed(_ sender: UIButton) {
        let diceArray =  [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        var randomDiceOne :[UIImage] = []
        var randomDiceTwo :[UIImage] = []
        //random item from the array
        for _ in 1...6 {
           
            randomDiceOne.append(diceArray.randomElement()!)
            randomDiceTwo.append(diceArray.randomElement()!)
            
        }
        
        diceImageViewTwo.animationImages = randomDiceTwo
        diceImageViewOne.animationImages = randomDiceOne
        
        diceImageViewTwo.animationDuration = 3.0
        diceImageViewOne.animationDuration = 3.0
        
        diceImageViewTwo.animationRepeatCount = 1
        diceImageViewOne.animationRepeatCount = 1
        
        diceImageViewOne.startAnimating()
        diceImageViewTwo.startAnimating()
        
        diceImageViewOne.image = randomDiceOne.randomElement()
        diceImageViewTwo.image = randomDiceTwo.randomElement()
        
        
       
        
   
       
        
        
      
        
        
    }
    
}

