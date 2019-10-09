//
//  main.swift
//  cd too ...
//
//  Created by James Tuley on 10/3/19.
//  Copyright © 2019 James Tuley. All rights reserved.
//

import Foundation
import ScriptingBridge

@objc public protocol SBObjectProtocol: NSObjectProtocol {
    func get() -> Any?
}

@objc public protocol SBApplicationProtocol: SBObjectProtocol {
    func activate()
    var isRunning: Bool { get }
}

@objc public protocol FinderApplication: SBApplicationProtocol {
    @objc optional func FinderWindows() -> SBElementArray
    @objc optional var insertionLocation: SBObject { get }
    @objc optional var selection: SBElementArray {get}
    
}
extension SBApplication: FinderApplication {}

@objc public protocol FinderItem: SBObjectProtocol {
    @objc optional var name: String { get }
    @objc optional var URL: String { get }
    @objc optional var kind: String { get }
    @objc optional var properties: NSDictionary { get }
    @objc optional var originalItem: SBObject { get }
}

extension SBObject: FinderItem {}

@objc public protocol FinderWindow: SBObjectProtocol{
    @objc optional func id() // the unique id for this window

}
extension SBObject: FinderWindow {}
// MARK: FinderWindow
@objc public protocol FinderFinderWindow: FinderWindow {
    @objc optional var target: SBObject { get } // the container at which this file viewer
}
extension SBObject: FinderFinderWindow {}

@objc public protocol TerminalApplication: SBApplicationProtocol {
    @objc optional func `open`(_ x: URL) // Open a document.
}
extension SBApplication: TerminalApplication {}

let finder:FinderApplication = SBApplication(bundleIdentifier: "com.apple.finder")!
let selectCmd = finder.selection
let maybeSel:Array? = selectCmd?.get() as! Array<SBObject>?

var target:FinderItem? = .none

if let sel = maybeSel {
    if sel.count > 0 {
        target = sel.first
    }
}else{
    let windows = finder.FinderWindows?()
    let window:FinderFinderWindow? = windows?.object(at: 0) as? FinderFinderWindow
    target = window?.target
}

if target?.kind == "Alias" {
    target = target?.originalItem?.get() as! FinderItem?
}

let fileUrl = target?.URL
var url:URL? = .none
if let fUrl = fileUrl {
    if fUrl != "" {
        let temp = URL(fileURLWithPath: fUrl)
        url = .some(temp)
        if fUrl.last != "/" {
            url = .some(temp.deletingLastPathComponent())
        }
    }
}

let terminal:TerminalApplication = SBApplication(bundleIdentifier: "com.apple.Terminal")!
terminal.activate()
if let final = url {
    terminal.open?(final)
} else {
    terminal.open?(URL(fileURLWithPath: "/home/"))
}


