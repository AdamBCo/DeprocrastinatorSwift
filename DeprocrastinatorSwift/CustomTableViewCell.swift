//
//  CustomTableViewCell.swift
//  DeprocrastinatorSwift
//
//  Created by Adam Cooper on 1/19/15.
//  Copyright (c) 2015 Adam Cooper. All rights reserved.
//

import Foundation
import UIKit

class CustomTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        self.backgroundColor = UIColor.greenColor()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: Selector("rightSwiped"))
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: Selector("leftSwiped"))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.addGestureRecognizer(swipeLeft)
        
    }
    
    func rightSwiped() {
        println("right swiped ")
        self.backgroundColor = UIColor.yellowColor()
    }
    
    func leftSwiped() {
        println("left swiped ")
        self.backgroundColor = UIColor.blueColor()
    }
    
}
