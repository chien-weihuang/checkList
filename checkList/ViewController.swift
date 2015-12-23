//
//  ViewController.swift
//  checkList
//
//  Created by 黃健維 on 2015/12/21.
//  Copyright © 2015年 黃健維. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    
    
    @IBOutlet weak var textField0: UITextField!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    
    
    @IBOutlet weak var switch0: UISwitch!
    
    @IBOutlet weak var switch1: UISwitch!
    
    
    @IBOutlet weak var switch2: UISwitch!
    
    
    @IBOutlet weak var clearbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func switchAction0(sender: UISwitch) {
        switch0off()
    }
    
    @IBAction func switchAction1(sender: UISwitch) {
        switch1off()
    }
    
    
    @IBAction func switchAction2(sender: UISwitch) {
        switch2off()
    }
    
    @IBAction func clearAction(sender: UIButton) {
        clearAll()
        
    }
    
    func keyBoardGoaway(){
    // reset to beginning action
    textField0.resignFirstResponder()
    textField1.resignFirstResponder()
    textfield2.resignFirstResponder()
    
    }
    
    func switch0off(){
    switch0.enabled = true
    textField0.enabled = false
    
    
    }
    func switch1off(){
        switch1.enabled = true
        textField1.enabled = false
        
        
    }
    func switch2off(){
        switch2.enabled = true
        textfield2.enabled = false
        
        
    }
    
    
    //need this to put in the functions above
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        keyBoardGoaway()
    }

    
    func clearAll(){
    textField0.enabled = true
    textField1.enabled = true
    textfield2.enabled = true
        
    switch0.enabled = true
    switch1.enabled = true
    switch2.enabled = true
    
    // set the textField blank again
    textField0.text =  ""
    textField1.text =  ""
    textfield2.text =  ""
        
    //set the switch back to it place
        
    switch0.setOn(false, animated: true)
    switch1.setOn(false, animated: true)
    switch2.setOn(false, animated: true)
        
    }
    
    //no rotation 
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    
    
}

