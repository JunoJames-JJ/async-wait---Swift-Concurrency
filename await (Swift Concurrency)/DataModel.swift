//
//  DataModel.swift
//  await (Swift Concurrency)
//
//  Created by Juno James on 2025-04-18.
//

import Foundation

struct DataModel: Decodable {
    let title: String
    let description: String
    let movies: [Movies]
}

struct Movies: Decodable {
    let id: String
    let title: String
    let releaseYear: String
}
