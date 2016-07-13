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
                break
        }
        
        paintBucket.paintColorName = mixedColor
        
        return paintBucket.paintColorName
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        
        let color1 = firstColor.color.name
        let color2 = secondColor.color.name
        
//        switch firstColor.selectedSegmentIndex {
//            case 0:
//                color1 = "red"
//            case 1:
//                color1 = "yellow"
//            case 2:
//                color1 = "blue"
//            default:
//                break
//        }
//        
//        switch secondColor.selectedSegmentIndex {
//            case 0:
//                color2 = "red"
//            case 1:
//                color2 = "yellow"
//            case 2:
//                color2 = "blue"
//            default:
//                break
//        }
        
        mixColors(withFirst: color1, second: color2)
    }
}