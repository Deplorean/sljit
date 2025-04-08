// swift-tools-version: 6.0.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sljit",
    platforms: [
        .macOS(.v15)
    ],
    products: [
        .library(name: "sljit",
                 targets: ["sljit"]
        )
    ],
    targets: [
        .testTarget(
            name: "sljit_tests",
            dependencies: [
                "sljit"
            ]
        ),
        .target(
            name: "sljit",
            exclude: [

            ],
            sources: [
                // sljit
                // headers *.h
                "sljit_src/sljitConfig.h",
                "sljit_src/sljitLir.h",
                
                // sources *.c
                "sljit_src/sljitLir.c",
                "sljit_src/sljitUtils.c"
            ],
            resources: [
                .process("LICENSE")
            ],
            cSettings: [
                //.define("SLJIT_CONFIG_ARM_64", to: "1"),
                .unsafeFlags([
                    "-Wdeclaration-after-statement",
                    "-Wextra",
                    "-Wconversion",
                    "-Wsign-compare",
                    "-Wunused-function",
                    "-Wshadow",
                    "-Werror"
                ])
            ]
        )
    ]
)
