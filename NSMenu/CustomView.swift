//
//  CustomView.swift
//  NSMenu
//
//  Created by Caldis on 2018/3/8.
//  Copyright © 2018年 Caldis. All rights reserved.
//

import Cocoa

class CustomView: NSView {
    
    @IBAction func showCustomViewMenu(_ sender: NSButton) {
        print("showCustomViewMenu")
        // Create the menu in custom view
        let customViewMenu = NSMenu()
        // Add a menu item in it
        customViewMenu.addItem(withTitle: "no one care", action: nil, keyEquivalent: "")
        // Popup the menu below button
        let position = NSPoint(x: 0, y: sender.frame.height+2)
        customViewMenu.popUp(positioning: nil, at: position, in: sender)
    }
    
}
