//
//  TagModel.swift
//  YoutubeWithSwiftUI
//
//  Created by Tolga İskender on 21.11.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import Foundation

struct TagModel: Identifiable,Hashable {
    var id = UUID()
    var title: String?
}
