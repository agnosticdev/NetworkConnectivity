// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "macOSExample",
    products: [
        .executable(name: "macOSExample", targets: ["macOSExample"]),
    ],
    dependencies: [
        .package(url: "../../../NetworkConnectivity", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "macOSExample",
            dependencies: ["NetworkConnectivity"]),
    ]
)