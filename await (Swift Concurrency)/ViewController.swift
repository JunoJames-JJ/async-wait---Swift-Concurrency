//
//  ViewController.swift
//  await (Swift Concurrency)
//
//  Created by Juno James on 2025-04-18.
//

import UIKit

class ViewController: UIViewController {
    let manager = Manager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Task {
            do {
                let moviesData = try await manager.fetchMovies()
                print("fetched movies: \(moviesData.movies)")
                //Update UI here
            } catch {
                print("failed to fect movies: \(error)")
            }
        }
        
    }


}

