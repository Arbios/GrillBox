// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "UI",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15)],
    products: [
        .library(
            name: "UI",
            targets: ["UI"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "UI",
            dependencies: []),
        .testTarget(
            name: "UITests",
            dependencies: ["UI"]),
    ]
)
