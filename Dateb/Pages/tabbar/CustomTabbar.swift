//
//  CustomTabbar.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 18/07/23.
//

import UIKit

class CustomTabBar: UITabBar {

    // Adjust this value to change the height of the tab bar
   
    var customTabBarHeight: CGFloat = 60.0
 

    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super.sizeThatFits(size)
     
        sizeThatFits.height = customTabBarHeight
        return sizeThatFits
    }
    
    override var frame: CGRect {
        get {
            return super.frame
        }
        set {
            var newFrame = newValue
            newFrame.size.height = customTabBarHeight
            super.frame = newFrame
        }
    }
}
