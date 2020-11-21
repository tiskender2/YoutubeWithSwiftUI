//
//  TagView.swift
//  YoutubeWithSwiftUI
//
//  Created by Tolga İskender on 20.11.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import SwiftUI

struct TagView: View {
    var tag: TagModel?
    
    var body: some View {
        Text("\(tag?.title ?? "")")
            .padding([.leading, .trailing], 8)
            .padding([.top, .bottom], 6)
            .background(Color.init(white: 0.9))
            .foregroundColor(Color.black)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.init(white: 0.5), lineWidth: 1)
            )
            .cornerRadius(15)
            .clipped()
            .padding([.bottom, .top], 8)
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView(tag: TagModel())
    }
}
