// swift-tools-version:5.2
// swift-tools-version:3.0.2
// swift-tools-version:3.1
// swift-tools-version:4.0
// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TrackSS",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TrackSS",
            targets: ["TrackSS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/miniy/KalmanFilter.git", .branch("master-5.2")),
        .package(url: "https://github.com/ShreshthSaxena/Upsurge.git", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TrackSS",
            dependencies: ["Upsurge","KalmanFilter"]),
        .testTarget(
            name: "TrackSSTests",
            dependencies: ["TrackSS"]),
    ]
)
