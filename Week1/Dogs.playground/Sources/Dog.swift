import Foundation

public class Dog {
    public var age:Int
    public var race: String
    public func sit()
    {
        print("Sitting!")
    }
    public init(age:Int, race:String)
    {
        self.age = age
        self.race = race
    }
}
