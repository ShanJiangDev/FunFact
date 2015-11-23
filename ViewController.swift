//
//  ViewController.swift
//  FunFact
//
//  Created by shan jiang on 21/11/15.
//  Copyright © 2015 Shan Jiang. All rights reserved.
//

// Command + mouse = header file
// Option + mouse = popup explanation
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFackLabel: UILabel!
    // ! means optional. When system loads views, not everything load at the same time. Things are loaded as they're needed to optimize performance and memory on your iphone. The ! mark here indicates that there's a chance that our outlet won't be loaded by the time the view loads and that if we try to access the property before that it will crash. The optional here tell the compiler that the connection between the label in Interface Builder and the property in code might not exist yet because it hasnät been established and that it will happen once the view has been loaded.
    
    // Optionals allowed us to set values to nil.
    
    // @IBOutlet is a tag applied to a property declaration, that allows interface builder to recognize this property as an outlet. And it synchronizes the visual element that we have in out scene with the stored property that we added in our code.
    
    // weak: memory management. Present a week relationship between view controller and label which create in interface builder. All IB element has weak relationships.
    

    let factsModel = FactsModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFackLabel.text = factsModel.facts[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        // IBAction:  let interface builder know that this action is linked up to an object in interface builder. Let the button to reference the action after click the button, interview controller class that is tied to the button and to execute on the code in this method. Know as Target Action
        // Target Action: action is the meesage that the control sends. And the receiving object is the target. So here the view controller class is the target, and the show fun fact method is the action. The action and its target is tied to an event. In this case, a touch event. And when the touch event occurs on the control, the sequence is initiated
        // With the target action method, you can also send information about the sender in the event that to place, and we do these as parameters in this method.
        print("You pressed me")
        // This message show in the console
        // funFackLabel.text = "Another interesting fact"
 
        funFackLabel.text = factsModel.facts[1]
    }

}

