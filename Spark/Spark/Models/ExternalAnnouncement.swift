//
//  ExternalAnnouncement.swift
//  Spark
//
//  Created by James McDougall on 2/10/23.
//

import SwiftUI

struct ExternalAnnouncement: Hashable, Identifiable {
    let id = UUID()
    var title: String
    var message: String
    var imageThumbnail: String
    var callToAction: String
}
