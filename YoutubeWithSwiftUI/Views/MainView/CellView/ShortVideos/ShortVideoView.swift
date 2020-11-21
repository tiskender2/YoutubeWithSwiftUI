//
//  ShotVideoView.swift
//  YoutubeWithSwiftUI
//
//  Created by Tolga İskender on 21.11.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import SwiftUI

struct ShortVideoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Short Videos")
                .font(.subheadline)
                .padding([.bottom, .top], 16)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<4) { _ in
                        VStack {
                            ZStack(alignment: .bottomLeading) {
                                Image("swiftui")
                                    .resizable()
                                    .frame(width: 140, height: 240)
                                    .scaledToFit()
                                Color.white.opacity(0.25)
                                VStack(alignment: .leading) {
                                    Text("SwiftUI 2.0 example with Youtube UI")
                                        .font(.headline)
                                    Text("Tolga Iskender")
                                        .font(.footnote)
                                }.padding([.leading, .trailing,.bottom],6)
                                 .foregroundColor(Color.white)
                            }.frame(width: 140, height: 240)
                            
                        }
                        
                    }
                }
            }
        }
    }
}

struct ShortVideoView_Previews: PreviewProvider {
    static var previews: some View {
        ShortVideoView()
    }
}
