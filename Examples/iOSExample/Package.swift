// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iOSExample",
    products: [
        .executable(name: "iOSExample", targets: ["iOSExample"]),
    ],
    dependencies: [
        .package(url: "../../../NetworkConnectivity", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "iOSExample",
            dependencies: ["NetworkConnectivity"]),
    ]
)