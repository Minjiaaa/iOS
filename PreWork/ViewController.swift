//
//  ViewController.swift
//  PreWork
//
//  Created by Minjiaaa on 2/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!

    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var interestSegmentedControl: UISegmentedControl!
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
       // updates the text of a label whenever the value of the stepper is changed.
       numberOfPetsLabel.text = "\(Int(sender.value))"
   }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
       
       // Lets us choose the title we have selected from the segmented control
       // In our example that is whether it is first, second, third or forth
       let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
       
    // choose one of the interest that students want to learn at Codepath
       let interest = interestSegmentedControl.titleForSegment(at: interestSegmentedControl.selectedSegmentIndex)
        
       // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
       let introduction = "My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets. My interest lies in \(interest!). I hope to learn more at Codepath."
        
        
    // Creates the alert where we pass in our message, which our introduction.
       let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
       let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
       alertController.addAction(action)
        
       present(alertController, animated: true, completion: nil)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

