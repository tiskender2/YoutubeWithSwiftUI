//
//  ListViewModel.swift
//  YoutubeWithSwiftUI
//
//  Created by Tolga İskender on 20.11.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var listArray = [ListModel(id: UUID(), title:"title", userName: "tolga", channelName: "youtubeChannel", userImage: "userImage", contentImage: "man", text: "test", likeCount: 20, commentCount: 20, viewsCount: 30, date: "14 hours ago"),
    ListModel(id: UUID(), title:"title", userName: "tolga", channelName: "youtubeChannel", userImage: "userImage", contentImage: "man", text: "test", likeCount: 20, commentCount: 20, viewsCount: 30, date: "14 hours ago"),
    ListModel(id: UUID(), title:"title",  userName: "tolga", channelName: "youtubeChannel", userImage: "userImage", contentImage: "man", text: "test", likeCount: 20, commentCount: 20, viewsCount: 30, date: "14 hours ago"),
    ListModel(id: UUID(), title:"title",  userName: "tolga", channelName: "youtubeChannel", userImage: "userImage", contentImage: "man", text: "test", likeCount: 20, commentCount: 20, viewsCount: 30, date: "14 hours ago"),
    ListModel(id: UUID(), title:"title",  userName: "tolga", channelName: "youtubeChannel", userImage: "userImage", contentImage: "man", text: "test", likeCount: 20, commentCount: 20, viewsCount: 30, date: "14 hours ago"),
    ListModel(id: UUID(), title:"title",  userName: "tolga", channelName: "youtubeChannel", userImage: "userImage", contentImage: "man", text: "test", likeCount: 20, commentCount: 20, viewsCount: 30, date: "14 hours ago")]
    
    @Published var tagArray = [TagModel(title:"All"),TagModel(title:"Life"),TagModel(title:"gym"),TagModel(title:"lorem ipsum")]
}
