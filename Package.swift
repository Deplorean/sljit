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
                .define("SUPPORT_JIT", to: "1", .when(platforms: [ .macOS ])),
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
