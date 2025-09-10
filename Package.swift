// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AudioKitEX",
    platforms: [.macOS(.v12), .iOS(.v13), .tvOS(.v13)],
    products: [.library(name: "AudioKitEX", targets: ["AudioKitEX"])],
    dependencies: [.package(url: "https://github.com/main-institute/AudioKit", exact: "5.6.0")],
    targets: [
        .target(name: "AudioKitEX", dependencies: ["AudioKit", "CAudioKitEX"]),
        .target(name: "CAudioKitEX", cxxSettings: [.headerSearchPath(".")]),
        .testTarget(name: "AudioKitEXTests", dependencies: ["AudioKitEX"], resources: [.copy("TestResources/")])
    ],
    cxxLanguageStandard: .cxx14
)

