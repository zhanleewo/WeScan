//
//  CGPoint+Utils.swift
//  Scanner
//
//  Created by Boris Emorine on 2/9/18.
//  Copyright © 2018 WeTransfer. All rights reserved.
//

import Foundation

extension CGPoint {
    
    /// Returns a rectangle of a given size surounding the point.
    ///
    /// - Parameters:
    ///   - size: The size of the rectangle that should surround the points.
    /// - Returns: A `CGRect` instance that surrounds this instance of `CGpoint`.
    func surroundingSquare(withSize size: CGFloat) -> CGRect {
        return CGRect(x: x - size / 2.0, y: y - size / 2.0, width: size, height: size)
    }
    
    /// Checks wether this point is within a given distance of another point.
    ///
    /// - Parameters:
    ///   - delta: The minimum distance to meet for this distance to return true.
    ///   - point: The second point to compare this instance with.
    /// - Returns: True if the given `CGPoint` is within the given distance of this instance of `CGPoint`.
    func isWithin(delta: CGFloat, ofPoint point: CGPoint) -> Bool {
        return (fabs(x - point.x) <= delta) && (fabs(y - point.y) <= delta)
    }
    
    /// Returns the same `CGPoint` in the cartesian coordinate system.
    ///
    /// - Parameters:
    ///   - height: The height of the bounds this points belong to, in the current coordinate system.
    /// - Returns: The same point in the cartesian coordinate system.
    func cartesian(withHeight height: CGFloat) -> CGPoint {
        return CGPoint(x: x, y: height - y)
    }
    
}
