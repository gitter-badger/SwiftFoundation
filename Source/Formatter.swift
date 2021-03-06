//
//  Formatter.swift
//  SwiftFoundation
//
//  Created by Alsey Coleman Miller on 6/29/15.
//  Copyright © 2015 ColemanCDA. All rights reserved.
//

/// Defines the interface for supporting conversion between strings and other types of values.
public protocol Formatter {
    
    typealias ValueType
    
    /// Primary method for converting an object to a string through formatting. Object will be converted to string according to the formatter's implementation and init parameters. */
    func stringForValue(value: ValueType) -> String
    
    func valueWithString(string: String) -> ValueType?
}