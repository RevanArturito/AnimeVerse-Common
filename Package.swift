// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Common",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Common", targets: ["Common"])
    ],
    dependencies: [
        .package(url: "https://github.com/RevanArturito/AnimeVerse-Core.git", from: "1.0.1")
    ],
    targets: [
        .target(name: "Common", dependencies: [
            .product(name: "Core", package: "AnimeVerse-Core")
        ]),
        .testTarget(name: "CommonTests", dependencies: ["Common"])
    ]
)
