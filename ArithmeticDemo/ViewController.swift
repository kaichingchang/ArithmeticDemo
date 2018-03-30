//
//《程式語言教學誌》的範例程式
// http://kaiching.org/
// 檔名：range.swift
// 功能：示範整數四則運算
// 作者：張凱慶
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var n1: NSTextField!
    @IBOutlet weak var n2: NSTextField!
    @IBOutlet weak var display: NSTextField!
    @IBOutlet weak var op: NSComboBox!
    
    @IBAction func calculate(_ sender: NSButton) {
        let a = Int(n1.stringValue)!
        let b = Int(n2.stringValue)!
        let c = op.indexOfSelectedItem
        var result = 0
        switch c {
        case 0:
            result = a + b
        case 1:
            result = a - b
        case 2:
            result = a * b
        case 3:
            result = a / b
        default:
            result = -9999
        }
        display.stringValue = String(result)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

