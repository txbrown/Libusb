// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Libusb",
    products: [
        .library(name: "Libusb", targets: ["Libusb"]),
    ],
    targets: [
        .systemLibrary(name: "Libusb", path: "."),
    ],
    providers: [
        .brew(["libusb"]),
        .apt(["libusb"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ]
)
