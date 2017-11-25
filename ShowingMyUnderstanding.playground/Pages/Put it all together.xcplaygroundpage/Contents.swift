/*:
 [Previous](@previous) / [Next](@next)
 
 # Put it all together
 
 Create an example that sequence, conditionals, and iteration to produce a simple image.
 
 The image need not be eye-catching or elaborate – it should simply demonstrate your ability to combine these programming structures.
 
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
let number=random(from: 0, toButNotIncluding: 3)

if number == 0 {
    canvas.fillColor=Color.init(hue: 200, saturation: 80, brightness: 95, alpha: 60)
} else if number == 1 {
    canvas.fillColor=Color.init(hue: 0, saturation: 95, brightness: 95, alpha: 60)
} else if number == 2 {
    canvas.fillColor=Color.init(hue: 61, saturation: 95, brightness: 95, alpha: 60)
    
}

canvas.drawRectangle(centreX: 150, centreY: 150, width: 300, height: 300)

for i in stride(from: 0, through: 300, by: 5) {
    canvas.lineColor=Color.init(hue: 200, saturation: 95, brightness: 95, alpha: 100)
    canvas.defaultLineWidth=1
    canvas.drawLine(fromX: 0, fromY: 0, toX: i+5, toY: 300)
    
    canvas.lineColor=Color.init(hue: 100, saturation: 81, brightness: 90, alpha: 100)
    canvas.defaultLineWidth=3
    canvas.drawLine(fromX: 300, fromY: 300, toX: i+5, toY: 0)
}


canvas.translate(byX: 150, byY: 150)

canvas.drawShapesWithBorders = false

// Draw the rainbow circle
canvas.fillColor=Color.red
canvas.drawEllipse(centreX: 0, centreY: 0, width: 55, height: 55)

canvas.fillColor=Color.orange
canvas.drawEllipse(centreX: 0, centreY: 0, width: 50, height: 50)

canvas.fillColor=Color.yellow
canvas.drawEllipse(centreX: 0, centreY: 0, width: 45, height: 45)

canvas.fillColor=Color.green
canvas.drawEllipse(centreX: 0, centreY: 0, width: 40, height: 40)

canvas.fillColor=Color.blue
canvas.drawEllipse(centreX: 0, centreY: 0, width: 35, height: 35)

canvas.fillColor=Color.init(hue: 250, saturation: 95, brightness: 95, alpha: 100)
canvas.drawEllipse(centreX: 0, centreY: 0, width: 30, height: 30)

canvas.fillColor=Color.purple
canvas.drawEllipse(centreX: 0, centreY: 0, width: 25, height: 25)

// Loop 8 times
for i in stride(from: 1, through: 8, by: 1) {
    canvas.defaultLineWidth=3
    canvas.lineColor=Color.black
    canvas.drawLine(fromX: 0, fromY: 30, toX: 5, toY: 40)
    canvas.drawLine(fromX: 5, fromY: 40, toX: -5, toY: 45)
    canvas.drawLine(fromX: -5, fromY: 45, toX: 10, toY: 55)
    canvas.drawLine(fromX: 10, fromY: 55, toX: 1, toY: 70)
    canvas.rotate(by: 45)
}







PlaygroundPage.current.liveView = canvas.imageView
