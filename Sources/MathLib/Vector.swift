//
//  Vector.swift
//  MathLib
//
//  Created by Junhao Wang on 12/16/21.
//

import simd

public typealias Float2 = SIMD2<Float>
public typealias Float3 = SIMD3<Float>
public typealias Float4 = SIMD4<Float>

extension Float2 {
    
}

extension Float3 {
    public init(xy: Float2, z: Float) {
        self.init(xy.x, xy.y, z)
    }
    
    public init(x: Float, yz: Float2) {
        self.init(x, yz.x, yz.y)
    }
    
    public var xy: Float2 {
        get { Float2(x, y) }
        set {
            x = newValue.x
            y = newValue.y
        }
    }
    public var yz: Float2 {
        get { Float2(y, z) }
        set {
            y = newValue.x
            z = newValue.y
        }
    }
}

extension Float4 {
    public init(xy: Float2, zw: Float2) {
        self.init(xy.x, xy.y, zw.x, zw.y)
    }
    
    public init(xyz: Float3, w: Float) {
        self.init(xyz.x, xyz.y, xyz.z, w)
    }
    
    public init(x: Float, yzw: Float3) {
        self.init(x, yzw.x, yzw.y, yzw.z)
    }
    
    public var xyz: Float3 {
        get { Float3(x, y, z) }
        set {
            x = newValue.x
            y = newValue.y
            z = newValue.z
        }
    }
    
    public var xy: Float2 {
        get { Float2(x, y) }
        set {
            x = newValue.x
            y = newValue.y
        }
    }
    
    public var zw: Float2 {
        get { Float2(z, w) }
        set {
            z = newValue.x
            w = newValue.y
        }
    }
}
