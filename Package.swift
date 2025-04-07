// swift-tools-version: 6.0.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libz",
    platforms: [
        .macOS(.v15),
        .visionOS(.v2),
        .iOS(.v15)
    ],
    products: [
        .library(name: "sljit",
                 type: .dynamic,
                 targets: ["sljit"]
        )
    ],
    targets: [
        .target(
            name: "sljit",
            exclude: [

            ],
            sources: [
                // sljit
                // headers *.h

                // sources *.c

            ],
            cSettings: [
            ]
        )
    ]
)
