//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Artur Anissimov on 25.03.2020.
//  Copyright © 2020 Artur Anissimov. All rights reserved.
//

import Foundation

class CommentNetworkService {
    
    private init() { }
    
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        
        guard let url = URL(string: "http://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
}
