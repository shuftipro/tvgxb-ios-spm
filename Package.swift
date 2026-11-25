// swift-tools-version:5.9

import PackageDescription

let frameworkRepo = "tvgxb-ios-spm"
let version = "1.0.0"
let frameworkZip = "ShuftiPro.xcframework.zip"
let checksumValue = "b63e5982770896b324f9eb6a362437e7ce02d64e20ff717abd275b89bae29200"
let package = Package(
    name: "tvgxb-ios-spm",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ShuftiPro",
            targets: ["ShuftiPro"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ShuftiPro",
            url: "https://github.com/shuftipro/\(frameworkRepo)/releases/download/\(version)/\(frameworkZip)",
            checksum: checksumValue
        )
    ]
)
