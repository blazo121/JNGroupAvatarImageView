// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JNGroupAvatarImageView",
    products: [
        .library(name: "JNGroupAvatarImageView", targets: ["JNGroupAvatarImageView"]),
    ],
    dependencies: [
        .package(url: "https://github.com/blazo121/JNAvatarWithInitials.git", branch: "master")
    ],
    targets: [
        .target(name: "JNGroupAvatarImageView", dependencies: [.product(name: "JNAvatarWithInitials", package: "JNAvatarWithInitials")], path: "JNGroupAvatarImageView", exclude: ["Example", "Images"])
    ]
)