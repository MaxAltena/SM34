//
//  ViewController.swift
//  WebRequest
//
//  Created by Max Altena on 14/09/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//
//
//  Tutorial followed from 'Lets Build That App' on YouTube
//  Link to the video: https://www.youtube.com/watch?v=YY3bTxgxWss
//

import UIKit

struct WebsiteDescription: Decodable {
    let name: String
    let description: String
    let courses: [Course]
}

struct Course: Decodable {
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
    
//    Swift 2/3 + Objective C - JSON parsing of 1 object
//    init(json: [String: Any]){
//        id = json["id"] as? Int ?? -1
//        name = json["name"] as? String ?? ""
//        link = json["link"] as? String ?? ""
//        imageUrl = json["imageUrl"] as? String ?? ""
//    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
//      Valid jsonURLs to be using:
//      Single object:              https://api.letsbuildthatapp.com/jsondecodable/course
//      Multiple objects in array:  https://api.letsbuildthatapp.com/jsondecodable/courses
//      Complicated json file:      https://api.letsbuildthatapp.com/jsondecodable/website_description
//      Missing fields:             https://api.letsbuildthatapp.com/jsondecodable/courses_missing_fields
        
        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/courses_missing_fields"
        guard let url = URL(string: jsonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            // check error
            // check response status 200 OK
            
            guard let data = data else { return }
            
//            let dataAsString = String(data: data, encoding: .utf8)
//            print(dataAsString)

//            Swift 2/3 + Objective C - JSON parsing of 1 object
//            do {
//                guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] else { return }
//                let course = Course(json: json)
//                print(course.name)
//            } catch let jsonError {
//                print("Error serializing json:", jsonError)
//            }
            
//            Swift 4 - JSON parsing of 1 object
//            do {
//                let course = try JSONDecoder().decode(Course.self, from: data)
//                print(course.name)
//            } catch let jsonError {
//                print("Error serializing json:", jsonError)
//            }
            
//            Swift 4 - JSON parsing of multiple objects in an array
//            do {
//                let courses = try JSONDecoder().decode([Course].self, from: data)
//                print(courses)
//            } catch let jsonError {
//                print("Error serializing json:", jsonError)
//            }
            
//            Swift 4 - JSON parsing of complicated json file
//            do {
//                let websiteDescription = try JSONDecoder().decode(WebsiteDescription.self, from: data)
//                print(websiteDescription.name, websiteDescription.description, websiteDescription.courses)
//            } catch let jsonError {
//                print("Error serializing json:", jsonError)
//            }
            
//            Swift 4 - JSON parsing of missing fields
            do {
                let courses = try JSONDecoder().decode([Course].self, from: data)
                print(courses)
            } catch let jsonError {
                print("Error serializing json:", jsonError)
            }
        }.resume()
    }
}
