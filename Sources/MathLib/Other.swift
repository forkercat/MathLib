//
//  Other.swift
//  MathLib
//
//  Created by Junhao Wang on 12/16/21.
//

import simd

// Rect
public struct Rect {
    public var left: Float = 0
    public var right: Float = 0
    public var bottom: Float = 0
    public var top: Float = 0
    
    public init(left: Float, right: Float, bottom: Float, top: Float) {
        self.left = left
        self.right = right
        self.bottom = bottom
        self.top = top
    }
}

extension Rect: Equatable { }
extension Rect: Hashable { }
extension Rect: Codable { }

// Bounds
public struct Bounds2 {
    public var pMin: Float2 = Float2()
    public var pMax: Float2 = Float2()

    public init(pMin: Float2, pMax: Float2) {
        self.pMin = pMin
        self.pMax = pMax
    }
}

extension Bounds2: Equatable { }
extension Bounds2: Hashable { }
extension Bounds2: Codable { }

// Size
//public struct Size<Value> where Value: Numeric {
//    public var width: Value
//    public var height: Value
//    
//    public init(width: Value, height: Value) {
//        self.width = width
//        self.height = height
//    }
//    
//    public var description: String {
//        "\(width) x \(height)"
//    }
//}
//
//extension Size: Equatable where Value: Equatable { }
//extension Size: Hashable where Value: Hashable { }
//extension Size: Codable where Value: Codable { }
