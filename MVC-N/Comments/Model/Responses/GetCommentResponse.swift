//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by Artur Anissimov on 25.03.2020.
//  Copyright © 2020 Artur Anissimov. All rights reserved.
//

import Foundation

struct GetCommentResponse {
    
    typealias JSON = [[String: AnyObject]]
    
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? JSON else { throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary ) else { continue }
            comments.append(comment)
        }
        
        self.comments = comments
    }
    
}
