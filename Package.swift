// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Clibusb",
    targets: [
        .systemLibrary(name: "libusb", pkgConfig: "libusb-1.0"),
        .target(name: "Clibusb", dependencies: ["libusb"])
    ]
)