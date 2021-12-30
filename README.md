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

let v3 = Float3(x: 1, y: 2, z: 3)
let v4 = Float4(xyz: v3, w: 4)

print(v4)

// Output
// SIMD4<Float>(1.0, 2.0, 3.0, 4.0)
```
