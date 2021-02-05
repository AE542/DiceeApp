//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var diceImageView1: UIImageView!
    //Common source of errors; if you change the name of the var above from 1 to One as it has been after dragging the connection from the dice to create the IBOutlet, the App will crash. To solve this problem delete the connection with right click(control) then diceview -x viewcontroller delete the vc. Reconnect by dragging the circle back to the dice.
    
    @IBOutlet var diceImageView2: UIImageView!
    //when your app crashes check out the bottom debug box and you can see at the top what the error is. When renaming use the right click select refactor then rename from that window. It won't cause an error.
    
     //var leftDiceNumber = 1
    
     //var rightDiceNumber = 5// start var from 5 so rightDiceNumber will start from 5 below in the array
    
    
    
    //override func viewDidLoad() {
       // super.viewDidLoad()
       //Who.What(property) = (new Value)
       // diceImageView1.image = #imageLiteral(resourceName: "DiceOne") //here we use who.what which is the image then = new value using imageLiteral to select the images we have pre loaded in the assets. It now shows the dice when the app is run.
        //diceImageView1.alpha = 0.5// this allows us to use the attributes inspector and change the transparency using .alpha. Doesn't change the alpha property in the att. inspector only programatically.// This was interfering with the IBAction below and would print a weird dice.
        
//        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo") // image literal allows image box to come out.
    
        
    //}//left and right arrow keys flash the block of code in it's entirety.


    @IBAction func rollButtonPressed(_ sender: UIButton) {//as Roll is a button we have to connect by dragging again but Swift automatically detects its a button from the UI Library.
        //print("Tap")// In simulator it prints this code in the debug console below when you tap Roll.
//        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
//        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
        
       
       // print("leftDiceNumber at beginning = \(leftDiceNumber)")
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]// we want this array to read a random number between 0 an 6.
        //was var diceArray but changed to let as this array isn't going to change so we make it into a constant. We don't want to keep it as an array in this case
        
        diceImageView1.image = diceArray.randomElement() //Now dice is in array.//Error expression of type [UIImage] is unused dont forget = sign. Good to remember the .random [Int.random(in: 0...5)]

        
    //leftDiceNumber += 1//adding 1 to var and goes to next position in array. Goes until end of array.
        //print("leftDiceNumber at the end = \(leftDiceNumber)") //Use the print function to find out if code is working properly.
        
        diceImageView2.image = diceArray.randomElement()//UI image had no subscripts error - no equals sign
        //rightDiceNumber -= 1// We don't have to actually put the array with the image literals and just make a variable diceArray above and refer to it as diceArray in both diceImageViews.// .randomElement() allows us to call a random element from the array without having to write an array that has an Int and reads from 0...5 for random numbers. much more succint code.
        
  
        
    }
}


