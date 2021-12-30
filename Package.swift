// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MathLib",
    
    products: [
        .library(
            name: "MathLib",
            targets: ["MathLib"]),
    ],
    
    dependencies: [],
    
    targets: [
        .target(
            name: "MathLib",
            dependencies: []),
        
        .target(
            name: "MathLib-Demo",
            dependencies: [
                "MathLib"
            ])
    ]
)
