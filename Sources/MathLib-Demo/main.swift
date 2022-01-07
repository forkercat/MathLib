//
//  main.swift
//  MathLib-Demo
//
//  Created by Junhao Wang on 12/29/21.
//

import MathLib

let v1 = Float3(x: 1, y: 2, z: 3)
let v2 = Float3(x: 300, y: 20, z: 1)

let v3 = Float4(xyz: v2, w: 4)
let v4 = Float4(1, 123.123, 25, 1344)

print(v1.str)
print(v2.str)

print(v3.str3f)
print(v4.str3f)

print(Float4x4.identity.str)
