/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence - Create an Example
 
 Create an example where overlapping shapes combine to create an image.
 
 You can find a simple image on the Internet and attempt to reproduce it.
 
 Or, you can create your own.

 ## Remember
 
 Commit your work as you make progress on this page.

 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Replace this comment and add your code below...

canvas.fillColor=Color.init(hue: 110, saturation: 90, brightness: 40, alpha: 100)
canvas.drawRectangle(centreX: 150, centreY: 150, width: 300, height: 300)

canvas.drawShapesWithBorders = false
canvas.fillColor=Color.init(hue: 31, saturation: 100, brightness: 95, alpha: 90)
canvas.drawEllipse(centreX: 150, centreY: 150, width: 100, height: 100)

canvas.fillColor=Color.init(hue: 270, saturation: 95, brightness: 95, alpha: 80)
canvas.drawEllipse(centreX: 115, centreY: 100, width: 70, height: 70)

canvas.fillColor=Color.init(hue: 0, saturation: 95, brightness: 95, alpha: 80)
canvas.drawEllipse(centreX: 175, centreY: 95, width: 70, height: 70)

canvas.fillColor=Color.init(hue: 65, saturation: 95, brightness: 95, alpha: 80)
canvas.drawEllipse(centreX: 100, centreY: 140, width: 70, height: 70)

canvas.fillColor=Color.init(hue: 155, saturation: 95, brightness: 95, alpha: 70)
canvas.drawEllipse(centreX: 200, centreY: 140, width: 70, height: 70)

canvas.fillColor=Color.init(hue: 215, saturation: 95, brightness: 95, alpha: 80)
canvas.drawEllipse(centreX: 185, centreY: 185, width: 70, height: 70)

canvas.fillColor=Color.init(hue: 320, saturation: 95, brightness: 95, alpha: 80)
canvas.drawEllipse(centreX: 125, centreY: 180, width: 70, height: 70)

canvas.fillColor=Color.init(hue: 0, saturation: 0, brightness: 100, alpha: 85)
canvas.drawEllipse(centreX: 150, centreY: 150, width: 70, height: 70)
canvas.defaultLineWidth=5
canvas.lineColor=Color.black
canvas.drawLine(fromX: 150, fromY: 100, toX: 150, toY: 30)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
