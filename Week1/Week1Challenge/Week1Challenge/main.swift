//
//  main.swift
//  Week1Challenge
//
//  Created by Max Altena on 31/08/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import Foundation

//
//  Challenge 1
//  -----------
//  Class room - Student - Teacher - Course
//  Course contains 1 teacher and >1 student and is in a room
//  and some more...
//

print("----------")

let maxAltena = Student(name: "Max Altena", pcn: 371527, profile: Student.profile.M)
let jurrenVanHasselt = Student(name: "Jurren van Hasselt", pcn: 321123, profile: Student.profile.M)
let sanderUbachs = Student(name: "Sander Ubachs", pcn: 386431, profile: Student.profile.M)

let coenCrombach = Teacher(name: "Coen Crombach", pcn: 888888, short: "CMB")
let SFG = Teacher(name: "Michael SFG", pcn: 999999, short: "SFG")

let currentRoom = Room(room: 2, floor: Room.floorEnum.second)
let newRoom = Room(room: 34, floor: Room.floorEnum.third)

let students = [maxAltena, jurrenVanHasselt, sanderUbachs]
let workshopSwift = Course(name: "Swift workshop", teacher: coenCrombach, students: students, room: currentRoom)

workshopSwift.echo()

print("----------")

workshopSwift.changeStudent(type: Course.typeEnum.remove, student: jurrenVanHasselt)
// Able to add or remove student from a course
// type is Course.typeEnum (.remove / .add) with student

print("----------")

workshopSwift.changeTeacher(newTeacher: SFG)
// Able to change teacher of the course
// The new teacher will override the old teacher, as there is always 1 teacher for the course

print("----------")

workshopSwift.changeRoom(newRoom: newRoom)
// Able to change room of the course
// The new room will override the old room, as there is only 1 room for the course

print("----------")

workshopSwift.echo()

print("----------")
