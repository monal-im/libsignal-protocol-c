// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "SignalProtocolC",
    products: [
        .library(
            name: "SignalProtocolC",
            targets: ["SignalProtocolC"],
        ),
    ],
    targets: [
        .target(
            name: "SignalProtocolC",
            path: "src",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("curve25519"),
                .headerSearchPath("curve25519/ed25519"),
                .headerSearchPath("curve25519/ed25519/additions"),
                .headerSearchPath("curve25519/ed25519/additions/generalized"),
                .headerSearchPath("curve25519/ed25519/nacl_includes"),
                .headerSearchPath("curve25519/ed25519/sha512"),
                .headerSearchPath("curve25519/ed25519/tests"),
            ],
        ),
    ],
    swiftLanguageModes: [.v6]
)
