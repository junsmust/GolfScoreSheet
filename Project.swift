import ProjectDescription

let project = Project(
    name: "GolfScoreSheet",
    targets: [
        .target(
            name: "GolfScoreSheet",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.GolfScoreSheet",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["GolfScoreSheet/Sources/**"],
            resources: ["GolfScoreSheet/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "GolfScoreSheetTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.GolfScoreSheetTests",
            infoPlist: .default,
            sources: ["GolfScoreSheet/Tests/**"],
            resources: [],
            dependencies: [.target(name: "GolfScoreSheet")]
        ),
    ]
)
