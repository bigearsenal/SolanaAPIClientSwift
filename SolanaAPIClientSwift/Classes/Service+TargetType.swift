//
//  Service+TargetType.swift
//  SolanaAPIClientSwift
//
//  Created by Chung Tran on 17/06/2021.
//

import Foundation
import Moya

public protocol SolanaAPIClientURLProvider {
    func getBaseURL() -> URL
}

extension SolanaService: TargetType {
    private static var urlProvider: SolanaAPIClientURLProvider!
    
    public static func setURLProvider(_ provider: SolanaAPIClientURLProvider) {
        urlProvider = provider
    }
    
    public var baseURL: URL {
        assert(Self.urlProvider != nil, "Need to call setURLProvider first")
        return Self.urlProvider.getBaseURL()
    }
    
    public var path: String {
        ""
    }
    
    public var method: Moya.Method {
        .post
    }
    
    public var task: Task {
        switch self {
        case <#pattern#>:
            <#code#>
        default:
            <#code#>
        }
    }
    
    public var sampleData: Data {
        Data()
    }
    
    public var headers: [String : String]? {
        ["Content-type": "application/json"]
    }
}
