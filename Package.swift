// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "YoutubeDL-iOS",
    platforms: [.iOS(.v13),],
    products: [
        .library(
            name: "YoutubeDL",
            targets: ["YoutubeDL"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pvieito/PythonKit.git", from: "0.3.1"),
        .package(url: "https://github.com/m4p/Python-iOS", branch: "kivy-ios")
    ],
    targets: [
        .target(
            name: "YoutubeDL",
            dependencies: ["Python-iOS", "PythonKit"],
            linkerSettings: [
                .linkedLibrary("bz2")
            ]),
        .testTarget(
            name: "YoutubeDL_iOSTests",
            dependencies: ["YoutubeDL"]),
    ]
)
