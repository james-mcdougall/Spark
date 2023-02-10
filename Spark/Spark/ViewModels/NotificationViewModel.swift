//
//  NotificationViewModel.swift
//  Spark
//
//  Created by James McDougall on 2/10/23.
//

import SwiftUI

final class NotificationViewModel: ObservableObject {
    
    @Published var isLoading = false
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    //FOR THE LOADING VIEW/SPINNER
    func startFakeNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.isLoading = false
        }
    }
    
    struct MockData {
        static let notifications = [
            CreatorSharedNewCreation(creatorTag: "@MoriahElizabeth", message: "@MoriahElizabeth has shared a new creation!", imageThumbnail: "IceCreamCats", callToAction: "Have a look"),
            CreatorSharedNewCreation(creatorTag: "@MoriahElizabeth", message: "@MoriahElizabeth has shared a new creation!", imageThumbnail: "RubixCube", callToAction: "Have a look"),
            CreatorSharedNewCreation(creatorTag: "@MoriahElizabeth", message: "@MoriahElizabeth has shared a new creation!", imageThumbnail: "IceCreamCats", callToAction: "Have a look"),
            CreatorSharedNewCreation(creatorTag: "@MoriahElizabeth", message: "@MoriahElizabeth has shared a new creation!", imageThumbnail: "RubixCube", callToAction: "Have a look")
        ]
    }
}
