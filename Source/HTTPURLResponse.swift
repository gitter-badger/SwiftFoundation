//
//  HTTPURLResponse.swift
//  SwiftFoundation
//
//  Created by Alsey Coleman Miller on 6/29/15.
//  Copyright © 2015 ColemanCDA. All rights reserved.
//

public protocol HTTPURLResponseType: URLResponse {
        
    var statusCode: Int { get }
    
    var headers: [String: String] { get }
    
    /** The response body. */
    //var body: DataType? { get }
}

/** HTTP URL response. */
public struct HTTPURLResponse: URLResponse {
    
    /** Returns a dictionary containing all the HTTP header fields. */
    public let headers: [String: String]
    
    /** Returns the HTTP status code for the response. */
    public let statusCode: Int
    
    /** The HTTP response body. */
    //public let body: DataType?
    
    public init(headers: [String: String] = [:],
        statusCode: Int = Int(HTTPStatusCode.OK.rawValue),
        body: Data? = nil) {
        
        self.headers = headers
        self.statusCode = statusCode
        //self.body = body
    }
}