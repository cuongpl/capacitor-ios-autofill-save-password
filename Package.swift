// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorAutofillSavePassword",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorAutofillSavePassword",
            targets: ["SavePassword"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "SavePassword",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Plugin"),
        .testTarget(
            name: "PluginTests",
            dependencies: ["SavePassword"],
            path: "ios/PluginTests")
    ]
)
