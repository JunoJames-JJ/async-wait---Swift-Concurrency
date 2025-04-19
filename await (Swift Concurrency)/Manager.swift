//
//  Manager.swift
//  await (Swift Concurrency)
//
//  Created by Juno James on 2025-04-18.
//

import Foundation

class Manager {
    func fetchMovies() async throws -> DataModel {
        guard let url = URL(string: "https://reactnative.dev/movies.json") else {
            throw URLError(.badURL)
        }
        // Automatically runs in background
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        return try decoder.decode(DataModel.self, from: data)
    }
}
