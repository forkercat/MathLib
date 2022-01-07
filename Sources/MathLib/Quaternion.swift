//
//  Quaternion.swift
//  MathLib
//
//  Created by Junhao Wang on 1/6/22.
//

import simd

public typealias Quaternion = simd_quatf

extension Quaternion {
    public init(eulerAngles: Float3) {
        self.init(Float4x4(rotation: eulerAngles))
    }
}
