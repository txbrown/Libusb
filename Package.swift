// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Libusb",
        providers: [
        .brew(["libusb"]),
        .apt(["libusb"])
    ],
  products: [
        .library(name: "Libusb", targets: ["Libusb"]),
    ],
    targets: [
        .systemLibrary(
            name: "libusb")
        .target(
            name: "Libusb",
            dependencies: ["libusb"]),
    ]
)
