// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxNimble",
    platforms: [
        .macOS(.v10_12), .iOS(.v9), .tvOS(.v9), .watchOS(.v3)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "RxNimble", targets: ["RxNimble"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/ReactiveX/RxSwift", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/Quick/Nimble", .upToNextMajor(from: "9.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "RxNimble", dependencies: ["RxSwift", "Nimble", "RxTest", "RxBlocking"], path: "Source/"),
    ],
    swiftLanguageVersions: [.v5]
)
