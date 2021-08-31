// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "RxGesture",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "RxGesture", targets: ["RxGesture"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "4.5.0")),
    ],
    targets: [
        .target(
            name: "RxGesture",
            dependencies: ["RxSwift", "RxCocoa"],
            path: "Pod",
            exclude: ["Pod/Classes/OSX"]
        )
    ]
)
