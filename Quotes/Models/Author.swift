//
//  Author.swift
//  M2L16 Challenge Solution
//
//  Created by Christopher Ching on 2021-02-04.
//

import Foundation

struct Author: Decodable, Identifiable {
    
    var id:UUID?
    var name:String
    var quotes:[String]
    var image:String
    
    static func testData() -> Author {
        
        let testAuthor = Author(id: UUID(), name: "Test Name", quotes: ["quote 1", "quote 2"], image: "ambition")
        
        return testAuthor
    }
}

