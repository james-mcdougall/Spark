//
//  NotificationsView.swift
//  Spark
//
//  Created by James McDougall on 2/10/23.
//

import SwiftUI

struct NotificationsView: View {
    
    @StateObject var notificationViewModel = NotificationViewModel()
    @State private var notifications = [Notification]()
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    if notificationViewModel.isLoading {
                        ZStack {
                            Color(.systemBackground)
                                .ignoresSafeArea()
                            
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: Color.red))
                                .scaleEffect(3)
                        }
                    }
                    // Here I would use the call to the Notification API in the view model instead of calling to the Notification View Model mock data. However this is just to mock the data
                    ForEach(MockData.notifications) { notification in
                        NavigationLink(
                            destination: CreationDetailView(),
                            label: {
                                CreatorSharedCreationNotificationsCardView(creatorSharedCreation: notification)
                            })
                    }
                }
                .navigationTitle("😸 Notifications")
                //We would run task here upon the view initialization in order to fetch the data to display on the view asynchronously
    //            .task {
    //                DispatchQueue.main.async {
    //                    await fetchData()
    //                }
    //            }
            }
            // FOR THE LOADING VIEW/SPINNER
            .onAppear {
                notificationViewModel.startFakenetworkCall()
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
            .preferredColorScheme(.dark)
    }
}
