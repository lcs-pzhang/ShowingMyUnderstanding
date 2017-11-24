/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a iteration (loops) to create an image.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)
canvas.fillColor=Color.init(hue: 181, saturation: 95, brightness: 95, alpha: 70)
canvas.drawRectangle(centreX: 150, centreY: 150, width: 300, height: 300)

for x in stride(from: 0, to: 300, by: 6) {
    canvas.defaultLineWidth=1
    canvas.lineColor=Color.white

canvas.drawLine(fromX: 0, fromY: 300, toX: x+10, toY: 0)
    
    canvas.drawLine(fromX: 300, fromY: 0, toX: x-5, toY: 300)
}

for x in stride(from: 0, to: 300, by: 6) {
    canvas.defaultLineWidth=5
    canvas.lineColor=Color.init(hue: 80, saturation: 95, brightness: 90, alpha: 60)
    canvas.drawLine(fromX: 0, fromY: 0, toX: 300, toY: x+10)
}




/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
