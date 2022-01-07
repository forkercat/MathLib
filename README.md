# MathLib

[![macOS](https://github.com/forkercat/MathLib/actions/workflows/ci-macos.yml/badge.svg)](https://github.com/forkercat/MathLib/actions/workflows/ci-macos.yml)
[![Linux](https://github.com/forkercat/MathLib/actions/workflows/ci-linux.yml/badge.svg)](https://github.com/forkercat/MathLib/actions/workflows/ci-linux.yml)
[![Windows](https://github.com/forkercat/MathLib/actions/workflows/ci-windows.yml/badge.svg)](https://github.com/forkercat/MathLib/actions/workflows/ci-windows.yml)
[![license](https://img.shields.io/badge/license-MIT-brightgreen.svg)](LICENSE)

[![platform-compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fforkercat%2FMathLib%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/forkercat/MathLib)
[![swift-version-compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fforkercat%2FMathLib%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/forkercat/MathLib)

A simple math library written in Swift. Still in development...

## 🔧 Install

You package file would be like:

```swift
let package = Package(
    name: "YourPackageName",
    
    dependencies: [
        .package(url: "https://github.com/forkercat/MathLib.git", .branch("main")),
    ],
    
    targets: [
        // For Swift 5.5, use .executableTarget
        .target(
            name: "YourPackageName",
            dependencies: [
                .product(name: "MathLib", package: "MathLib")
            ]),
    ]
)
```

## 🥲 Usage

```swift
import MathLib

let v1 = Float3(x: 1, y: 2, z: 3)
let v2 = Float3(x: 300, y: 20, z: 1)

let v3 = Float4(xyz: v2, w: 4)
let v4 = Float4(1, 123.123, 25, 1344)

print(v1.str)
print(v2.str)

print(v3.str3f)
print(v4.str3f)

// Output
Float3 [   1.0,   2.0,   3.0 ]
Float3 [ 300.0,  20.0,   1.0 ]
Float4 [  300.000,   20.000,    1.000,    4.000 ]
Float4 [    1.000,  123.123,   25.000, 1344.000 ]

Float4x4 [[   1.0,   0.0,   0.0,   0.0 ],
          [   0.0,   1.0,   0.0,   0.0 ],
          [   0.0,   0.0,   1.0,   0.0 ],
          [   0.0,   0.0,   0.0,   1.0 ]]
```
