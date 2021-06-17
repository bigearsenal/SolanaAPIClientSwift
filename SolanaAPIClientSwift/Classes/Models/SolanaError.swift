//
//  SolanaError.swift
//  SolanaAPIClientSwift
//
//  Created by Chung Tran on 17/06/2021.
//

import Foundation

enum Error: Swift.Error {
    case notFound
    
    // Invalid Requests
    case invalidRequest(reason: String? = nil)
    
    // Invalid responses
    case invalidResponse(ResponseError)
    case other(String)
}
