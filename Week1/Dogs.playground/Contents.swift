//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let barkie =  Dog(age:2, race:"Sheppard")
        
        let label = UILabel()
        label.frame = CGRect(x: 25, y: 25, width: 200, height: 20)
        label.text = "\(barkie.race) is \(barkie.age) jaar oud!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
