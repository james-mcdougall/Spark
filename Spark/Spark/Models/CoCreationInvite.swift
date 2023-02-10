//
//  CoCreationInvite.swift
//  Spark
//
//  Created by James McDougall on 2/10/23.
//

import Foundation

struct CoCreationInvite: Hashable, Identifiable {
    let id = UUID()
    var title: String
    var message: String
    var callToAction: String
}
