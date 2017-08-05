// Your Playground code should fulfill the following project requirements:

// Be able to apply a filter formula to each pixel of the image.
// The formula should have parameters that can be modified so that the filter can have a small or large effect on the image.
// Be able to apply several different filters to the image, in a specific order (e.g. a ‘pipeline of filters’). These could be different formulas (e.g. brightness vs. contrast) or could be the same formula with different parameters.
// Have some method or interface to apply default filter formulas and parameters that can be accessed by name.

// The indexing formula is:
//  i = x + width*y;

// (Just in case) and the reverse operation is:
// x = i % width;    // % is the "modulo operator", the remainder of i / width;
// y = i / width;    // where "/" is an integer division

import UIKit

let image = UIImage(named: "sample")

struct ColorInformation {
    var red = 0
    var green = 0
    var blue = 0
}

enum Color: String {
    case red, green, blue
}

class CustomRGBAImage {
    var image: RGBAImage
    var colorsTotalizers: ColorInformation
    var colorsAverages: ColorInformation
    
    init(image: RGBAImage) {
        self.image = image
        self.calculateTotals()
        self.calculateAverage()
    }
    
    func height() -> Int {
        return self.image.height
    }
    
    func width() -> Int {
        return self.image.width
    }
    
    func calculateTotals() {
        for y in 0..<self.height() {
            for x in 0..<self.width() {
                let pixel = getPixel(self.image, x: x, y: y)
                self.colorsTotalizers.red += Int(pixel.red)
                self.colorsTotalizers.green += Int(pixel.green)
                self.colorsTotalizers.blue += Int(pixel.blue)
            }
        }
    }
    
    func calculateAverage() {
        let count = self.width() * self.height()
        self.colorsAverages.red = self.colorsTotalizers.red / count
        self.colorsAverages.green = self.colorsTotalizers.green / count
        self.colorsAverages.blue = self.colorsTotalizers.blue / count
    }
    
    func applyTransformation(color: Color, percentage: Double) {
        // TODO the percentage should be < 1 to decrease and > 1 to increase
    }
    
    func toUIImage() -> UIImage {
        return self.image.toUIImage()!
    }
    
}

func getPixel(rgba: RGBAImage, x: Int, y: Int) -> Pixel {
    let index = y * rgba.width + x
    return rgba.pixels[index]
}

// Process the image!
// TODO Add another parameter to define the transformation
func processImage(image: UIImage) -> UIImage {
    let rgba = CustomRGBAImage(image: RGBAImage(image: image)!)
    
    rgba.applyTransformation(Color(rawValue: "red")!, percentage: 0.5)
    return rgba.toUIImage()
}
