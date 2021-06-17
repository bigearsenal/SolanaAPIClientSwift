//
//  RequestParams.swift
//  SolanaAPIClientSwift
//
//  Created by Chung Tran on 17/06/2021.
//

import Foundation

public typealias Commitment = String

public struct RequestConfiguration: Encodable {
    public let commitment: Commitment?
    public let encoding: String?
    public let dataSlice: DataSlice?
    public let filters: [[String: EncodableWrapper]]?
    public let limit: Int?
    public let before: String?
    public let until: String?
    
    public init?(commitment: Commitment? = nil, encoding: String? = nil, dataSlice: DataSlice? = nil, filters: [[String: EncodableWrapper]]? = nil, limit: Int? = nil, before: String? = nil, until: String? = nil)
    {
        if commitment == nil && encoding == nil && dataSlice == nil && filters == nil && limit == nil && before == nil && until == nil {
            return nil
        }
        self.commitment = commitment
        self.encoding = encoding
        self.dataSlice = dataSlice
        self.filters = filters
        self.limit = limit
        self.before = before
        self.until = until
    }
}

public struct DataSlice: Encodable {
    public let offset: Int
    public let length: Int
}

public struct EncodableWrapper: Encodable {
    let wrapped: Encodable
    
    public func encode(to encoder: Encoder) throws {
        try self.wrapped.encode(to: encoder)
    }
}
