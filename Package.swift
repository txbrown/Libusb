// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Libusb",
        providers: [
        .brew(["libusb"]),
        .apt(["libusb"])
    ],
   targets: [
        // by default the package manager assumes the module lives in a folder of the 
        // same name underneath the `Sources/` directory
        .systemLibrary(name: "Libusb", path: ".", pkgConfig: "libusb")
    ]
)
