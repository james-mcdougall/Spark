//
//  CreatorSharedNewCreation.swift
//  Spark
//
//  Created by James McDougall on 2/10/23.
//

import SwiftUI

struct CreatorSharedNewCreation: Hashable, Identifiable {
    let id = UUID()
    var creatorTag: String
    var message: String
    var imageThumbnail: String
    var callToAction: String
}

struct MockData {
    static let notifications = [
        CreatorSharedNewCreation(creatorTag: "@MoriahElizabeth", message: "@MoriahElizabeth has shared a new creation!", imageThumbnail: "IceCreamCats", callToAction: "Have a look"),
        CreatorSharedNewCreation(creatorTag: "@MoriahElizabeth", message: "@MoriahElizabeth has shared a new creation!", imageThumbnail: "RubixCube", callToAction: "Have a look"),
        CreatorSharedNewCreation(creatorTag: "@MoriahElizabeth", message: "@MoriahElizabeth has shared a new creation!", imageThumbnail: "IceCreamCats", callToAction: "Have a look"),
        CreatorSharedNewCreation(creatorTag: "@MoriahElizabeth", message: "@MoriahElizabeth has shared a new creation!", imageThumbnail: "RubixCube", callToAction: "Have a look")
    ]
}
