//
//  PersonModel.swift
//  HQCodable
//
//  Created by gandijun on 2018/5/25.
//  Copyright © 2018年 HeQing. All rights reserved.
//

import Foundation

//Test1
//struct Person: Decodable, Encodable{
struct Person: Codable{
    
    var name: String
    var sex: String
    var age: Int
    
//    private enum CodingKeys: String, CodingKey {
//        case name
//        case sex
//        case age
//    }
//
//    init(from decoder: Decoder) throws {
//
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.sex = try container.decode(String.self, forKey: .sex)
//        self.age = try container.decode(Int.self, forKey: .age)
//    }
//
//    func encode(to encoder: Encoder) throws {
//
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(self.name, forKey: .name)
//        try container.encode(self.sex, forKey: .sex)
//        try container.encode(self.age, forKey: .age)
//    }
}

//Test2
struct Persons: Codable {
    var persons: [Person]
}
