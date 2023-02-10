//
//  NewCreatorFollower.swift
//  Spark
//
//  Created by James McDougall on 2/10/23.
//

import SwiftUI

struct NewCreatorFollower: Hashable, Identifiable {
    let id = UUID()
    let creatorTag: String
    var message: String
    var callToAction: String
}
