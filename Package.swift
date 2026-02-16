// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IOS.SharedLibs",
    platforms: [
        .iOS(.v15)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "IOS.SharedLibs",
            targets: ["IOS.SharedLibs"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "IOS.SharedLibs"
        ),
        .testTarget(
            name: "SharedLibsTests",
            dependencies: ["IOS.SharedLibs"]
        ),
    ]
)
