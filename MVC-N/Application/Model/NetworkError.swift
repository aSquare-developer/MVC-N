//
//  NetworkError.swift
//  MVC-N
//
//  Created by Artur Anissimov on 25.03.2020.
//  Copyright © 2020 Artur Anissimov. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case failInternetError
    case noInternetConnection
}
