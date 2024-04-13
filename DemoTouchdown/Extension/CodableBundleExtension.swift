//
//  CodableBundleExtension.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 13/04/24.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(file:String) -> T{
        // 1.- locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate \(file) in the bundle.")
        }
        // 2.- Create a Property for the data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load \(file) in the bundle.")
        }
        // 3.- Create a Decoder
        let decoder = JSONDecoder()
        // 4.- Create a property for the decode data
        guard let data = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode \(file) form bundle")
        }
        // 5.- Return the ready-to-use data
        return data
    }
}
