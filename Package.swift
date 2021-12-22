// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MathLib",
    
    products: [
        .library(
            name: "MathLib",
            targets: ["MathLib"]),
    ],
    
    dependencies: [
        
    ],
    
    targets: [
        .target(
            name: "MathLib",
            dependencies: []),
    ]
)
