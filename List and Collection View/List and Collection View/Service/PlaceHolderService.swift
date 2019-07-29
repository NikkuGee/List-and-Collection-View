//
//  PlaceHolderService.swift
//  List and Collection View
//
//  Created by Consultant on 7/27/19.
//  Copyright © 2019 Consultant. All rights reserved.
//

import Foundation



final class PlaceHolderService {
    
    static let shared = PlaceHolderService()
    private init() {}
    
    
    func getSearch(from search: String, completion: @escaping (([PlaceHolder]) -> Void)) {
    
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/photos") else {
            
            print("API Service Failed")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (dat, _, err) in
        
            if let error = err {
                print("API Request Error: \(error.localizedDescription)")
                return
            }
        
            if let data = dat {
        
            do {
                let placeObject = try JSONDecoder().decode([PlaceHolder].self, from: data)
                let holders = placeObject
                DispatchQueue.main.async {
                    completion(holders)
                }

            } catch let decodeError {
                print("Decode Error: \(decodeError.localizedDescription)")
                completion([])
                return
            }

            }
        }.resume()
    }
}
