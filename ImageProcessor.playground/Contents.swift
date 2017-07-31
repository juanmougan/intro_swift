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

// Process the image!
// TODO Add another parameter to define the transformation
func processImage(image: UIImage) -> UIImage {
    let rgba = RGBAImage(image: image)!
    for y in 0..<rgba.height {
        for x in 0..<rgba.width {
            let index = y * rgba.width + x
            var pixel = rgba.pixels[index]
            // TODO do the transformation here
        }
    }
    return rgba.toUIImage()
}
