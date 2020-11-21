//
//  PostInteractionView.swift
//  YoutubeWithSwiftUI
//
//  Created by Tolga İskender on 21.11.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import SwiftUI

struct PostInteractionView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 12) {
            Image("like")
                .resizable()
                .frame(width: 24, height: 24)
                .padding(.leading,10)
            Text("3.8K")
                .offset(y: -6)
            Image("like")
                .resizable()
                .frame(width: 24, height: 24)
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 0, z: 1)) // couldnt find exactly same icon thats why i rotated it
            Spacer()
            Image("comment")
                .resizable()
                .frame(width: 24, height: 24)
            Text("86")
                .offset(y: -6)
        }.padding()
    }
}

struct PostInteractionView_Previews: PreviewProvider {
    static var previews: some View {
        PostInteractionView()
    }
}
