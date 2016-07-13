//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets
    @IBOutlet weak var paintBucket: UIImageView!
    @IBOutlet weak var firstColor: UISegmentedControl!
    @IBOutlet weak var secondColor: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
        paintBucket.paintColorName = "red"
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        var mixedColor = ""
        // print("first argument: \(first) second argument: \(second)")
        
        switch (first, second) {
            case ("red", "red"):
                mixedColor = "red"
            case ("red", "yellow"):
                mixedColor = "orange"
            case ("red", "blue"):
                mixedColor = "purple"
            case ("blue", "blue"):
                mixedColor = "blue"
            case ("yellow", "red"):
                mixedColor = "orange"
            case ("blue", "red"):
                mixedColor = "purple"
            case ("blue", "yellow"):
                mixedColor = "green"
            case ("yellow", "blue"):
                mixedColor = "green"
            case ("yellow", "yellow"):
                mixedColor = "yellow"
            default:
                // print("inside switch -- first: \(first), second: \(second)")
                mixedColor = "blue"
        }
        
        paintBucket.paintColorName = mixedColor
        // print("mixed color: \(mixedColor)")
        
        return paintBucket.paintColorName
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        
        let color1 = firstColor.color.name.lowercaseString
        let color2 = secondColor.color.name.lowercaseString
        //need to make this lowercase string to match the switch statement cases in mixColors() method. otherwise, paint color names are "Red", "Blue" or "Yellow", because these correspond with the labels of the segmented controls! 
        
//        print("first color: \(color1)")
//        print("second color: \(color2)")
        
        mixColors(withFirst: color1, second: color2)
    }
}