//
//  ComparatorSortDescriptor.swift
//  SwiftFoundation
//
//  Created by Alsey Coleman Miller on 7/3/15.
//  Copyright © 2015 ColemanCDA. All rights reserved.
//

/** Sorts according to a given closure. */
public struct ComparatorSortDescriptor<T>: SortDescriptor {
    
    public typealias Comparator = (T, T) -> Order
    
    public let ascending: Bool
    
    /** The closure that will be used for sorting. */
    public let comparator: Comparator
    
    public func sort(first: T, second: T) -> Order {
        
        return self.comparator(first, second)
    }
    
    public init(ascending: Bool, comparator: Comparator) {
        
        self.ascending = ascending
        self.comparator = comparator
    }
}