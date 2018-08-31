//
//  room.swift
//  Week1Challenge
//
//  Created by Max Altena on 31/08/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import Foundation

public class Room {
    public enum floorEnum:Int {
        case ground, first, second, third, fourth
    }
    
    public var room:Int
    public var floor:Int
    
    func getRoomString() -> String {
        var roomString:String
        
        if room < 10 {
            roomString = "0\(room)"
        }
        else {
            roomString = "\(room)"
        }
        
        return "Room \(floor).\(roomString)"
    }
    
    public func echo() {
        print(getRoomString())
    }
    
    public func forCourse() -> String {
        return getRoomString()
    }
    
    public init(room: Int, floor: floorEnum){
        self.room = room
        self.floor = floor.rawValue
    }
}
