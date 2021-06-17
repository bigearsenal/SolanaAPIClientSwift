//
//  Data+Extensions.swift
//  SolanaAPIClientSwift
//
//  Created by Chung Tran on 17/06/2021.
//

import Foundation

extension Data {
    var bytes: Array<UInt8> {
        Array(self)
    }
}
