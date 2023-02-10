//
//  NewCreatorFollowerNotificationCardView.swift
//  Spark
//
//  Created by James McDougall on 2/10/23.
//

import SwiftUI

struct NewCreatorFollowerNotificationCardView: View {
    
    let notification: NewCreatorFollower
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 8, content: {
                    Text(notification.creatorTag)
                        .frame(width: 110, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.caption)
                        .scaledToFit()
                        .minimumScaleFactor(0.5)
                        .background(Color.blue.opacity(0.3))
                        .cornerRadius(10)
                    Text(notification.message)
                        .padding(.trailing, 20)
                        .minimumScaleFactor(0.5)
                    
                    VStack(spacing: 3) {
                        Text(notification.callToAction)
                            .fontWeight(.semibold)
                            .scaledToFit()
                            .minimumScaleFactor(0.5)
                        Rectangle()
                            .frame(width: 150, height: 3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.blue.opacity(0.5))
                    }
                    .frame(width: 150, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                })
            }
            .padding()
        }
        .background(Color.blue.opacity(0.3))
        .cornerRadius(10)
    }
}

struct NewCreatorFollowerNotificationCardView_Previews: PreviewProvider {
    
    static let newFollower = NewCreatorFollower(creatorTag: "@ElizabethMoriah", message: "@ElizabethMoriah started following you", callToAction: "Check out their profile!")
    
    static var previews: some View {
        NewCreatorFollowerNotificationCardView(notification: newFollower)
    }
}
