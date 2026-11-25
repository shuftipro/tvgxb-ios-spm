// swift-tools-version:5.9

import PackageDescription

let frameworkRepo = "tvgxb-ios-spm"
let version = "1.0.0"
let frameworkZip = "ShuftiPro.xcframework.zip"
let checksumValue = "1998551f6582fcda90e10026255b25ad0cf6955255bd8d7c95d28e074cdede99"
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
