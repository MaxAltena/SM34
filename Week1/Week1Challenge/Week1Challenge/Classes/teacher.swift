//
//  teacher.swift
//  Week1Challenge
//
//  Created by Max Altena on 31/08/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import Foundation

public class Teacher {
    public let pcn:Int
    public var name:String
    public var short:String
    
    func getTeacherString() -> String {
        return "\(name) (\(short))"
    }
    
    public func echo() {
        print(getTeacherString() + " is a teacher!")
    }
    
    public func forCourse() -> String {
        return getTeacherString()
    }
    
    public init(name: String, pcn: Int, short: String){
        self.name = name
        self.pcn = pcn
        self.short = short
    }
}
