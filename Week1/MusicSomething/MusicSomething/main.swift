//
//  main.swift
//  MusicSomething
//
//  Created by Max Altena on 31/08/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import Foundation

print("Hello, World!")
print("----")

let floor = 2
let room = 02
var roomString:String

if room < 10 {
    roomString = "0\(room)"
}
else {
    roomString = "\(room)"
}

print("We are in room \(floor).\(roomString)")
print("----")

let marimba = Instrument(name: "Marimba")
marimba.play(note: "C")

let viool = Instrument(name: "Viool")
viool.play(note: "D")
