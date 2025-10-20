// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PMUtils",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PMUtils",
            targets: ["PMCircularCollectionView"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Foundation+PMUtils",
            path: "Pod/Classes/Foundation+PMUtils",
            publicHeadersPath: ".",
        ),
        .target(
            name: "UIKit+PMUtils",
            dependencies: ["Foundation+PMUtils"],
            path: "Pod/Classes/UIKit+PMUtils",
            publicHeadersPath: ".",
        ),
        .target(
            name: "PMProtocolInterceptor",
            path: "Pod/Classes/PMProtocolInterceptor",
            publicHeadersPath: ".",
        ),
        .target(
            name: "PMCircularCollectionView",
            dependencies: ["UIKit+PMUtils", "PMProtocolInterceptor"],
            path: "Pod/Classes/PMCircularCollectionView",
            publicHeadersPath: ".",

        ),
    ]
)
