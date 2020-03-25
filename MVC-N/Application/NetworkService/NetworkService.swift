//
//  NetworkService.swift
//  MVC-N
//
//  Created by Artur Anissimov on 25.03.2020.
//  Copyright © 2020 Artur Anissimov. All rights reserved.
//

import Foundation

class NetworkService {
    
    private init() { }
    static let shared = NetworkService()
    
    public func getData(url: URL, completion: @escaping (Any) -> ()) {
        
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print(error)
            }
        }.resume()
    }
}
