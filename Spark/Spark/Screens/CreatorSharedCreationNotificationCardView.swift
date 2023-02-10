//
//  CreatorSharedCreationNotificationCardView.swift
//  Spark
//
//  Created by James McDougall on 2/10/23.
//

import SwiftUI

struct CreatorSharedCreationNotificationCardView: View {
    
    let creatorSharedCreation: CreatorSharedNewCreation
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 8, content: {
                    Text(creatorSharedCreation.creatorTag)
                        .frame(width: 110, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.caption)
                        .scaledToFit()
                        .minimumScaleFactor(0.5)
                        .background(Color.blue.opacity(0.3))
                        .cornerRadius(10)
                    Text(creatorSharedCreation.message)
                        .padding(.trailing, 20)
                        .minimumScaleFactor(0.5)
                    
                    VStack(spacing: 3) {
                        Text(creatorSharedCreation.callToAction)
                            .fontWeight(.semibold)
                            .scaledToFit()
                            .minimumScaleFactor(0.5)
                        Rectangle()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.blue.opacity(0.5))
                    }
                    .frame(width: 100, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                })
                Image(creatorSharedCreation.imageThumbnail)
                    .resizable()
                    .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            .padding()
        }
        .background(Color.blue.opacity(0.3))
        .cornerRadius(10)
    }
}

struct CreatorSharedCreationNotificationCardView_Previews: PreviewProvider {
    
    static let creatorShared = CreatorSharedNewCreation(creatorTag: "@ElizabethMoriah", message: "@ElizabethMoriah shared a new creation!", imageThumbnail: "IceCreamCats", callToAction: "Check it out!")
    
    static var previews: some View {
        CreatorSharedCreationNotificationCardView(creatorSharedCreation: creatorShared)
    }
}
