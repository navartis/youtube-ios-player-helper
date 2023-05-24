// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "YouTubeiOSPlayerHelper",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "YouTubeiOSPlayerHelper",
            targets: ["YouTubeiOSPlayerHelper"]
        )
    ],
    targets: [
        .target(
            name: "YouTubeiOSPlayerHelper-ObjC",
            dependencies: [],
            path: "YouTubeiOSPlayerHelper/",
            publicHeadersPath: "Headers"
        ),
        .target(
           name: "YouTubeiOSPlayerHelper",
           dependencies: ["YouTubeiOSPlayerHelper-ObjC"],
           path: "Sources",
           resources: [
                .process("Assets")
           ]
        )
    ]
)

