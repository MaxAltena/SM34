//
//  course.swift
//  Week1Challenge
//
//  Created by Max Altena on 31/08/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import Foundation

//
//  Functions;
//  Add/Remove a student from a course
//  Add/Remove a teacher from a course
//


public class Course {
    public enum typeEnum {
        case add, remove
    }
    
    public let name:String
    public var teacher:Teacher
    public var students:Array<Student>
    public var room:Room
    
    public func changeStudent(type: typeEnum, student: Student){
        if type == typeEnum.add {
            self.students.append(student)
            print("Added student \(student.name) to \(name)")
        }
        else if type == typeEnum.remove {
            let index = students.index(where: { $0 === student })
            if index != nil {
                self.students.remove(at: index!)
                print("Removed student \(student.name) from \(name)")
            }
            else {
                print("Failed to remove student")
            }
        }
    }
    
    public func changeTeacher(newTeacher: Teacher){
        print("Removed \(teacher.name) from course")
        self.teacher = newTeacher
        print("Added \(teacher.name) as new teacher for this course")
    }
    
    public func changeRoom(newRoom: Room) {
        print("Removed \(room.forCourse()) from course")
        self.room = newRoom
        print("Added \(room.forCourse()) as new room for this course")
    }
    
    public func echo(){
        print("\(name) given in \(room.forCourse()) by \(teacher.forCourse())")
        print("Attending students:")
        
        for Student in students {
            print("\(Student.forCourse())")
        }
    }
    
    public init(name: String, teacher: Teacher, students: Array<Student>, room: Room){
        self.name = name
        self.teacher = teacher
        self.students = students
        self.room = room
    }
}
