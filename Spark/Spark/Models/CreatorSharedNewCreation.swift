//
//  CreatorSharedNewCreation.swift
//  Spark
//
//  Created by James McDougall on 2/10/23.
//

import SwiftUI

struct CreatorSharednewCreation: Hashable, Identifiable {
    let id = UUID()
    var creatorTag: String
    var message: String
    var imageThumbnail: String
    var callToAction: String
}
