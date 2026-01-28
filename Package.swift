// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "PaymentsSDK",
  platforms: [.iOS(.v14)],
  products: [
    .library(name: "PaymentsSDK", targets: ["PaymentsSDK"])
  ],
  targets: [
    .target(name: "PaymentsCore", path: "Sources/PaymentsCore"),
    .target(name: "PaymentsSDK", dependencies: ["PaymentsCore"], path: "Sources/PaymentsSDK"),
    .testTarget(name: "PaymentsSDKTests", dependencies: ["PaymentsSDK"], path: "Tests/PaymentsSDKTests")
  ]
)
