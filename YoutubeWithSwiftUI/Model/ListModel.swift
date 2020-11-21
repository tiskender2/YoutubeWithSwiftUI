//
//  ListModel.swift
//  YoutubeWithSwiftUI
//
//  Created by Tolga İskender on 20.11.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import Foundation

struct ListModel: Identifiable,Hashable {
    var id = UUID()
    var title: String?
    var userName: String?
    var channelName: String?
    var userImage: String? = "man"
    var contentImage: String?
    var text: String?
    var likeCount: Int?
    var commentCount: Int?
    var viewsCount: Int?
    var date: String?
    
}
