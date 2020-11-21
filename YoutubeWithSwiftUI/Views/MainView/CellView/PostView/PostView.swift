//
//  PostView.swift
//  YoutubeWithSwiftUI
//
//  Created by Tolga İskender on 21.11.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import SwiftUI

struct PostView: View {
    
    var userViewisHidden  = true
    var interactionViewisHidden = true
    
    var body: some View {
        VStack(alignment: .leading) {
            if !userViewisHidden {
                UserView(image: "userImage", title: "Post Malone", desc: "13 hours ago")
                Text("post detail text").offset(x: 10)
            }
          
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("postMalone")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: 300)
                        .scaledToFill()
                        .background(Color.black)
                    VStack{
                        Text("2:27")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding(.trailing, 2)
                            .padding(.leading, 2)
                            .background(Color.black)
                            .cornerRadius(4)
                            .offset(x: -4, y: -4)
                    }
                }
            }
            if interactionViewisHidden {
                UserView(image: "userImage", title: "Stay", desc: "Post Malone, 20M views, Apr 27, 2018").padding(.bottom,15)
            } else {
                  UserView(image: "userImage", title: "Big Sean - Wolwes ft. Post Malone", desc: "Big Sean, 381K views, 16 hours ago")
            }
          
            if !interactionViewisHidden {
                 PostInteractionView()
            }
           
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(userViewisHidden: true, interactionViewisHidden: true)
    }
}
