/*:
 [Previous](@previous) / [Next](@next)
 
 # Conditionals - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a conditional statement to respond to random number generation.
 
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

let number=random(from: 0, toButNotIncluding: 4)


if number == 0 {
    canvas.fillColor=Color.blue
   
} else if number == 1{
    canvas.fillColor=Color.yellow
    
} else if number == 2{
    canvas.fillColor=Color.init(hue: 270, saturation: 95, brightness: 95, alpha: 85)
} else if number == 3{
    canvas.fillColor=Color.init(hue: 0, saturation: 0, brightness: 95, alpha: 85)
}
 canvas.drawRectangle(centreX: 150, centreY: 150, width: 300, height: 300)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
