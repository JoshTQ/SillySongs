//
//  ViewController.swift
//  SillySong
//
//  Created by Joshua Quinn on 25/06/2018.
//  Copyright © 2018 Joshua Quinn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricField: UITextView!
    
    @IBAction func reset(_ sender: Any) {
        nameField.text = String()
        lyricField.text = "Your Lyrics will appear here!"
    }
    
    @IBAction func set(_ sender: Any) {
        if (nameField.text != String()) {
            lyricField.text = useTemplate(fullName: nameField.text!, secondName: shortName(name: nameField.text!))
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var sillySong = "{name}, {name}, Bo Bate Banana F{shortName} Fo F{shortName} Me My Mo M{shortName} {name}"
    
    func shortName(name: String) -> String {
        var startName = name.lowercased();
        let shortName = String(startName.remove(at: startName.startIndex))
        
        return shortName
    }
    
    func useTemplate(fullName name: String, secondName nameTwo: String) -> String {
        var template = sillySong
        let returnValue = template.replacingOccurrences(of: "{name}", with: name)
                .replacingOccurrences(of: "{shortName}", with: nameTwo)
        
        return returnValue
    }
    
    

}

