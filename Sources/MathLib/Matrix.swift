//
//  Matrix.swift
//  MathLib
//
//  Created by Junhao Wang on 12/16/21.
//

import simd

public typealias Float3x3 = float3x3
public typealias Float4x4 = float4x4

extension Float4x4 {
    public static var identity: Float4x4 {
        get { matrix_identity_float4x4 }
    }
    
    // Translate
    public init(translation: Float3) {
        let matrix = Float4x4(
            [            1,             0,             0, 0],
            [            0,             1,             0, 0],
            [            0,             0,             1, 0],
            [translation.x, translation.y, translation.z, 1]
        )
        self = matrix
    }
    
    // Scale
    public init(scale: Float3) {
        let matrix = Float4x4(
            [scale.x,       0,       0, 0],
            [      0, scale.y,       0, 0],
            [      0,       0, scale.z, 0],
            [      0,       0,       0, 1]
        )
        self = matrix
    }
    
    public init(scale: Float) {
        self = matrix_identity_float4x4
        //        columns.3.w = 1 / scale
        columns.0.x = scale
        columns.1.y = scale
        columns.2.z = scale
    }
    
    // Rotate
    public init(rotationX angle: Float) {  // radians
        let matrix = Float4x4(
            [1,           0,          0, 0],
            [0,  cos(angle), sin(angle), 0],
            [0, -cos(angle), cos(angle), 0],
            [0,           0,          0, 1]
        )
        self = matrix
    }
    
    public init(rotationY angle: Float) {
        let matrix = Float4x4(
            [cos(angle), 0, -sin(angle), 0],
            [         0, 1,           0, 0],
            [sin(angle), 0,  cos(angle), 0],
            [         0, 0,           0, 1]
        )
        self = matrix
    }
    
    public init(rotationZ angle: Float) {
        let matrix = Float4x4(
            [ cos(angle), sin(angle), 0, 0],
            [-sin(angle), cos(angle), 0, 0],
            [          0,          0, 1, 0],
            [          0,          0, 0, 1]
        )
        self = matrix
    }
    
    public init(rotation angle: Float3) {
        let rotationX = float4x4(rotationX: angle.x)
        let rotationY = float4x4(rotationY: angle.y)
        let rotationZ = float4x4(rotationZ: angle.z)
        self = rotationX * rotationY * rotationZ
    }
    
    public init(rotationYXZ angle: Float3) {
        let rotationX = float4x4(rotationX: angle.x)
        let rotationY = float4x4(rotationY: angle.y)
        let rotationZ = float4x4(rotationZ: angle.z)
        self = rotationY * rotationX * rotationZ
    }
    
    public var upperLeft: Float3x3 {
        let c0 = columns.0.xyz
        let c1 = columns.1.xyz
        let c2 = columns.2.xyz
        return Float3x3(columns: (c0, c1, c2))
    }
    
    // Left-handed LookAt Matrix
    public init(eye: Float3, center: Float3, up: Float3) {
        let z = normalize(center - eye)  // forward
        let x = normalize(cross(up, z))  // right
        let y = cross(z, x)
        
        let c0 = Float4(x.x, y.x, z.x, 0)
        let c1 = Float4(x.y, y.y, z.y, 0)
        let c2 = Float4(x.z, y.z, z.z, 0)
        let c3 = Float4(-dot(x, eye), -dot(y, eye), -dot(z, eye), 1)
        self.init(c0, c1, c2, c3)
    }
    
    // Projection Matrix
    public init(orthoLeft left: Float, right: Float, bottom: Float, top: Float, near: Float, far: Float) {
        let rect = Rect(left: left, right: right, bottom: bottom, top: top)
        self.init(orthographic: rect, near: near, far: far)
    }
    
    public init(orthographic rect: Rect, near: Float, far: Float) {
        let c0 = Float4(2 / (rect.right - rect.left), 0, 0, 0)
        let c1 = Float4(0, 2 / (rect.top - rect.bottom), 0, 0)
        let c2 = Float4(0, 0, 1 / (far - near), 0)
        let c3 = Float4((rect.left + rect.right) / (rect.left - rect.right),
                        (rect.top + rect.bottom) / (rect.bottom - rect.top),
                        near / (near - far),
                        1)
        self.init(c0, c1, c2, c3)
    }
    
    public init(projectionFov fov: Float, aspectRatio: Float, near: Float, far: Float, lhs: Bool = true) {
        let y = 1 / tan(fov * 0.5)
        let x = y / aspectRatio
        let z = lhs ? far / (far - near) : far / (near - far)
        let c0 = Float4(x, 0, 0, 0)
        let c1 = Float4(0, y, 0, 0)
        let c2 = lhs ? Float4(0, 0, z, 1) : Float4(0, 0, z, -1)
        let c3 = lhs ? Float4(0, 0, z * -near, 0) : Float4(0, 0, z * near, 0)
        self.init(c0, c1, c2, c3)
    }
}
