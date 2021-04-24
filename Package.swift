// swift-tools-version:5.4
import PackageDescription

let package = Package(
  name: "Parchment",
  platforms: [
    .iOS(.v9)
  ],
  products: [
    .library(name: "Parchment", targets: ["Parchment"])
  ],
  targets: [
    .target(name: "Parchment", path: "Parchment", exclude: ["Resources/Info.plist"])
  ]
)
