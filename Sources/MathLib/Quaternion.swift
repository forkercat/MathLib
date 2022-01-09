//
//  Quaternion.swift
//  MathLib
//
//  Created by Junhao Wang on 1/6/22.
//

import simd

public typealias Quaternion = simd_quatf

extension Quaternion {
    public init(rotaionXYZ angles: Float3) {
        self.init(Float4x4(rotationXYZ: angles))
    }
    
    public init(rotationZXY angles: Float3) {
        self.init(Float4x4(rotationZXY: angles))
    }
    
    public init(rotationYXZ angles: Float3) {
        self.init(Float4x4(rotationYXZ: angles))
    }
}
