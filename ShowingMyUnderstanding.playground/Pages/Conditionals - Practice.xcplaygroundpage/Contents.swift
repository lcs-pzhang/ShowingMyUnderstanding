/*:
 [Previous](@previous) / [Next](@next)
 
 # Conditionals - Practice
 
 How can conditionals be used to create output?
 
 Create an image where the characteristics depend on the result of the random number generation.
 
 When the random number is 0, the shape is a square.
 
 When the random number is 1, the shape is a circle.
  
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Generate a random number
let number = random(from: 0, toButNotIncluding: 2)

for x in stride(from: 0, to: 300, by: 100) {
    canvas.fillColor=Color.init(hue: 170, saturation: 95, brightness: 95, alpha: 100)
    if number == 0 {
        // square
        canvas.drawRectangle(centreX: 150, centreY: 150, width: 40, height: 40)
    } else if number == 1 {
        //circle
        canvas.drawEllipse(centreX: 150, centreY: 150, width: 40, height: 40)
        
    }
}



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
