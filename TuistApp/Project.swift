import ProjectDescription

let project = Project(name: "TuistApp",
                      targets: [
                        Target(name: "TuistApp",
                               platform: .iOS,
                               product: .app,
                               bundleId: "io.tuist.TuistApp",
                               infoPlist: "Info.plist",
                               sources: ["Sources/**"],
                               resources: [
                                       /* Path to resouces can be defined here */
                                       // "Resources/**"
                               ],
                               dependencies: [
                                    /* Target dependencies can be defined here */
                                    .framework(path: "Frameworks/Core/Core.framework")
                                ]),
                        Target(name: "TuistAppTests",
                               platform: .iOS,
                               product: .unitTests,
                               bundleId: "io.tuist.TuistAppTests",
                               infoPlist: "Tests.plist",
                               sources: "Tests/**",
                               dependencies: [
                                    .target(name: "TuistApp")
                               ]),
                           Target(name: "Core",
                               platform: .iOS,
                               product: .framework,
                               bundleId: "io.tuist.Core",
                               infoPlist: "Frameworks/Core/Core.plist",
                               sources: "Frameworks/Core/**",
                               dependencies: []
                               )
                      ])