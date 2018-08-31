//
//  student.swift
//  Week1Challenge
//
//  Created by Max Altena on 31/08/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import Foundation

public class Student {
    public let pcn:Int
    public var name:String
    public var profileChoice:profile
    public enum profile {
        case M, S, T, B
    }
    
    public func echo() {
        print("\(name) (\(pcn)) with profile \(profileChoice)")
    }
    
    public func forCourse() -> String {
        return "\(profileChoice) - \(pcn) - \(name)"
    }
    
    public init(name: String, pcn: Int, profile: profile){
        self.name = name
        self.pcn = pcn
        self.profileChoice = profile
    }
}
