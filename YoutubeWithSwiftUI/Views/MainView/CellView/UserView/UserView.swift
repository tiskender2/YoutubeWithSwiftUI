//
//  UserView.swift
//  YoutubeWithSwiftUI
//
//  Created by Tolga İskender on 21.11.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import SwiftUI

struct UserView: View {
    var image: String
    var title:String
    var desc:String

    var body: some View {
        HStack {
            Image("\(image)")
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(20)
                .scaledToFill()
            VStack(alignment: .leading) {
                Text("\(title)")
                Text("\(desc)")
                    .font(.system(size: 13))
                    .foregroundColor(Color.gray)
            }
            Spacer()
        }
        .padding(.top, 10)
        .padding(.leading, 20)
        
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(image: "", title: "",desc: "")
    }
}
