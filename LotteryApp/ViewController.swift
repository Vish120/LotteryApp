//
//  ViewController.swift
//  LotteryApp
//
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
    }

    
    @IBAction func drawButtonAction(_ sender: Any) {
        
        let num1 = randomNum()
        let num2 = randomNum()
        let num3 = randomNum()
        
        let num4 = randomNum()
        let num5 = randomNum()
        let num6 = randomNum()
        
        label1.text = String(num1)
        label2.text = String(num2)
        label3.text = String(num3)
        label4.text = String(num4)
        label5.text = String(num5)
        label6.text = String(num6)
        
    }
    
    
    @IBAction func clearButtonAction(_ sender: Any) {
        
        label1.text = "-"
        label2.text = "-"
        label3.text = "-"
        label4.text = "-"
        label5.text = "-"
        label6.text = "-"
        
        
    }
    
    
    
    @IBAction func infoButtonAction(_ sender: Any) {
        
        let alert = UIAlertController(title: "Vishwa Mavani", message: "Student ID: 101285743", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    
    func randomInt(max: Int) -> Int {
     let rand: Int = Int(arc4random())
     return (rand % max) + 1
     }
     func randomNum() -> Int {
     let max: Int = 65
     let random = randomInt(max: max)
     return random
     }

}

