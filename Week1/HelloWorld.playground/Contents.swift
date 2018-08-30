//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let numberOfFacesOnDice = 6
        let pi = 3.1415
        let justSomeText = "Hello there!"
        
        let view = UIView()
        view.backgroundColor = .white

        let label1 = UILabel()
        label1.frame = CGRect(x: 25, y: 25, width: 400, height: 20)
        label1.text = "Label1: Hallo wereld!"
        label1.textColor = .black
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 25, y: 50, width: 400, height: 20)
        label2.text = "Label2: " + justSomeText
        label2.textColor = .blue
        
        let label3 = UILabel()
        label3.frame = CGRect(x: 25, y: 75, width: 400, height: 20)
        label3.text = "Label3: " + String(pi)
        label3.textColor = .gray
        
        let label4 = UILabel()
        label4.frame = CGRect(x: 25, y: 100, width: 400, height: 20)
        label4.text = "Label4: " + String(numberOfFacesOnDice)
        label4.textColor = .brown
        
        var numberOfStudentsAtWeirdWeek = 8
        numberOfStudentsAtWeirdWeek = 16
        var question = "Wai U no show up?"
        question = "nm"
        
        let label5 = UILabel()
        label5.frame = CGRect(x: 25, y: 125, width: 400, height: 20)
        label5.text = "Label5: " + question + String(numberOfStudentsAtWeirdWeek)
        label5.textColor = .lightGray
        
        let justSomeInteger = 12
        let justSomeDouble = 1.23456789
        let sumOfNumbers = Double(justSomeInteger) + justSomeDouble
        
        let label6 = UILabel()
        label6.frame = CGRect(x: 25, y: 150, width: 400, height: 20)
        label6.text = "Label6: " + String(sumOfNumbers)
        label6.textColor = .cyan
        
        let thisIsNotAFloat:Int  = 10
        let enterTextHere:String = "Hello!"
        
        let label7 = UILabel()
        label7.frame = CGRect(x: 25, y: 175, width: 400, height: 20)
        label7.text = "Label7: " + enterTextHere + String(thisIsNotAFloat)
        label7.textColor = .darkGray
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        view.addSubview(label6)
        view.addSubview(label7)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
