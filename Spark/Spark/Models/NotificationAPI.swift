//
//  NotificationAPI.swift
//  Spark
//
//  Created by James McDougall on 2/10/23.
//

import SwiftUI

struct Notification: Codable {
    var creatorTag: String
    var message: String
    var imageName: String
    var callToAction: String
    
    //Depending on the API and the naming conventions I would create coding keys here in order to decipher the incoming response. Here I will make mock coding keys just to show my knowledge of coding keys.
    
    enum CodingKeys: String, CodingKey {
        case creatorTag = "creator_tag"
        case message
        case imageName = "image_name"
        case callToAction = "call_to_action"
    }
    // I know that async/await was not introduced in Swift until a later version than what I am currently running, but I am displaying that I know how to make calls using current Swift Concurrency methods here. This is how I would call to an API.
    
//    func fetchData() {
//        guard let url = URL(string: "https://www.spark.com/api/notifications") else {
//            Log("Error fetching data")
//            return
//        }
//
//        do {
//            let(data, _) = try await URLSession.shared.data(from: url)
//
//            // decoding data
//            if let decodedResponse = try? JSONDecoder().decode([Notification].self, from: data) {
//                notifications = decodedResponse
//            }
//        } catch {
//            Log("Error decoding response")
//        }
//    }
}
