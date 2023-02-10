//
//  GeneralAnnouncment.swift
//  Spark
//
//  Created by James McDougall on 2/10/23.
//

import SwiftUI

struct GeneralAnnouncement: Hashable, Identifiable {
    let id = UUID()
    var title: String?
    var message: String
}
