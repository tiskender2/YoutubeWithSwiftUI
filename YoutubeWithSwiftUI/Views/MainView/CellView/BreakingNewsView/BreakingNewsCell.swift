//
//  BreakingNewsModel.swift
//  YoutubeWithSwiftUI
//
//  Created by Tolga İskender on 20.11.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import SwiftUI

struct BreakingNewsCell: View {
    var model: [ListModel]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 4) {
            Text("Breaking News")
                .font(.subheadline)
                .padding([.bottom, .top], 16)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .firstTextBaseline) {
                    ForEach(model) { data in
                        VStack(alignment: .leading) {
                            ZStack(alignment: .bottomTrailing) {
                                Image("breakingNews")
                                    .resizable()
                                    .frame(width: 120, height: 100)
                                    .scaledToFit()
                                VStack{
                                    Text("2:27")
                                        .font(.subheadline)
                                        .foregroundColor(.white)
                                        .padding(.trailing, 2)
                                        .padding(.leading, 2)
                                        .background(Color.black)
                                        .cornerRadius(4)
                                        .offset(x: -4, y: -4)
                                    //Spacer()
                                }
                            }
                            Text("\(data.title ?? "")")
                            Text("\(data.channelName ?? "")")
                                .font(.system(size: 14))
                                .foregroundColor(Color.gray)
                            HStack {
                                Text("\(data.text ?? "")")
                                Text("\(data.date ?? "")")
                            }.font(.system(size: 14))
                             .foregroundColor(Color.gray)
                        }
                       
                    }
                }
            }
        }
    }
}

struct BreakingNewsModel_Previews: PreviewProvider {
    static var previews: some View {
        BreakingNewsCell(model: [ListModel()])
    }
}
