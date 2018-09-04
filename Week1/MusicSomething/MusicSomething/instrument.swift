//
//  instrument.swift
//  MusicSomething
//
//  Created by Max Altena on 31/08/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import Foundation

public class Instrument {
    public var name:String
    
    public func play(note: String) {
        print("\(name) plays \(note)")
    }
    
    public init(name: String){
        self.name = name
    }
}
