//
//  ViewController.swift
//  NSMenu
//
//  Created by Caldis on 2018/3/8.
//  Copyright © 2018年 Caldis. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var theMenu: NSMenu!
    @IBOutlet var theMenuItem: NSMenuItem!
    @IBOutlet var customView: NSView!
    
    override func viewDidLoad() {
        theMenuItem.view = customView
    }
    
    @IBAction func showTheMenu(_ sender: NSButton) {
        print("showTheMenu")
        // Create the menu in custom view
        let customViewMenu = NSMenu()
        // Add a menu item in it
        customViewMenu.addItem(withTitle: "no one care", action: nil, keyEquivalent: "")
        // Popup the menu below button
        let position = NSPoint(x: 0, y: sender.frame.height+2)
        customViewMenu.popUp(positioning: nil, at: position, in: sender)
    }

    @IBAction func showTheMenuWithCustomView(_ sender: NSButton) {
        print("showTheMenuWithCustomView")
        // Popup the menu below button
        let position = NSPoint(x: 0, y: sender.frame.height+2)
        theMenu.popUp(positioning: nil, at: position, in: sender)
    }
    
}

