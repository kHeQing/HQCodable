//
//  ViewController.swift
//  HQCodable
//
//  Created by gandijun on 2018/5/25.
//  Copyright © 2018年 HeQing. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        test2()
        
    }

    func test1() {
        
        let json = """
        {
            "name": "HQ",
            "sex": "Man",
            "age": 18,
        }
        """.data(using: .utf8)!
        
        let decoder = JSONDecoder()
        if let person = try? decoder.decode(Person.self, from: json) {
            
            print(person.name)
            print(person.sex)
            print(person.age)
            
            let encoder = JSONEncoder()
            encoder.outputFormatting = .prettyPrinted
            if let personJson = try? encoder.encode(person) {
                print(String(data: personJson, encoding: .utf8)!)
            }
        }
        
    }
    
    func test2() {
        
        let json = """
        {
            "persons": [
                {
                    "name": "HQ1",
                    "sex": "Man",
                    "age": 18,
                },
                {
                    "name": "HQ2",
                    "sex": "Woman",
                    "age": 20,
                }
            ]
        }
        """.data(using: .utf8)!
        
        let decoder = JSONDecoder()
//        let keyedPersons = try! decoder.decode([String: [Person]].self, from: json)
//        let persons = keyedPersons["persons"]
        if let keyedPersons = try? decoder.decode(Persons.self, from: json) {
            
            let persons = keyedPersons.persons
            print(persons)
            
            let encoder = JSONEncoder()
            encoder.outputFormatting = .prettyPrinted
//            if let personJson = try? encoder.encode(keyedPersons) {
//                print(String(data: personJson, encoding: .utf8)!)
//            }
            if let personJson = try? encoder.encode(persons.first) {
                print(String(data: personJson, encoding: .utf8)!)
            }
        }
    }
}

