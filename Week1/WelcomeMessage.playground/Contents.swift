//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let ageOfDude = 33
        let name = "Jeff"
        var emailAddress:String?
        
        if (emailAddress != nil)
        {
            //Do something with emailAdress
            emailAddress = "NotJeff@gmail.com"
        }
        else {
            emailAddress = "Jeff@gmail.com"
        }
        
        
        func createWelcomeMessage(name:String, age:Int) -> String
        {
            let welcomeMessage =
            "Hi \(name) or \(emailAddress ?? "emailAddress")? Are you really \(age) years old?"
            return welcomeMessage
        }
        
        //Call the function
        let messageToShow = createWelcomeMessage(name: "Jeff", age: 33)
        
        let label = UILabel()
        label.frame = CGRect(x: 25, y: 25, width: 400, height: 20)
        label.textColor = .black
        label.text = messageToShow
        
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
