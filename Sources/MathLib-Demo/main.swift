//
//  main.swift
//  MathLib-Demo
//
//  Created by Junhao Wang on 12/29/21.
//

import MathLib

let v3 = Float3(x: 1, y: 2, z: 3)
let v4 = Float4(xyz: v3, w: 4)

print(v4)

// Output
// SIMD4<Float>(1.0, 2.0, 3.0, 4.0)
