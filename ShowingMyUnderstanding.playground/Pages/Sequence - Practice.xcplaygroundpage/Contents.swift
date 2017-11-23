/*:
 [Previous](@previous) / [Next](@next)

 # Sequence - Practice
 
 When does sequence matter?

 Here is an example of an image that is created and depends on statements being run in a certain order:

 ![overlapping_shapes](overlapping-shapes.png "Overlapping Shapes Logo")

 In this shape, there are lines and ellipses used.

 [Color](http://russellgordon.ca/lcs/HSB_Color_Model_Summary_Swift.pdf) and alpha (transparency) matter.

 Try reproducing this image for practice.
 
 NOTE: Colors and image must match precisely.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note

 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// No borders
canvas.drawShapesWithBorders = false

// Thick lines
canvas.defaultLineWidth = 5


// Add your code below... remember to use comments to indicate your intent
canvas.fillColor=Color.black
canvas.drawRectangle(centreX: 150, centreY: 150, width: 300, height: 300)

canvas.fillColor=Color.init(hue: 59, saturation: 100, brightness: 95, alpha: 100)
canvas.drawEllipse(centreX: 120, centreY: 190, width: 90, height: 90)

canvas.defaultLineWidth=5
canvas.lineColor=Color.init(hue: 59, saturation: 100, brightness: 95, alpha: 100)
canvas.drawLine(fromX: 120, fromY: 150, toX: 120, toY: 50)

canvas.fillColor=Color.blue
canvas.drawEllipse(centreX: 210, centreY: 190, width: 90, height: 90)

canvas.defaultLineWidth=5
canvas.lineColor=Color.blue
canvas.drawLine(fromX: 210, fromY: 150, toX: 210, toY: 50)

canvas.fillColor=Color.init(hue: 0, saturation: 100, brightness: 95, alpha: 70)
canvas.drawEllipse(centreX: 165, centreY: 190, width: 90, height: 90)

canvas.defaultLineWidth=5
canvas.lineColor=Color.init(hue: 0, saturation: 100, brightness: 95, alpha: 70)
canvas.drawLine(fromX: 165, fromY: 145, toX: 165, toY: 50)

canvas.fillColor=Color.init(hue: 111, saturation: 100, brightness: 95, alpha: 70)
canvas.drawEllipse(centreX: 70, centreY: 190, width: 90, height: 90)

canvas.defaultLineWidth=5
canvas.lineColor=Color.init(hue: 111, saturation: 100, brightness: 95, alpha: 70)
canvas.drawLine(fromX: 70, fromY: 145, toX: 70, toY: 50)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
