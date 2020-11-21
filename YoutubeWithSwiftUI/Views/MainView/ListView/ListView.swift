//
//  ListView.swift
//  YoutubeWithSwiftUI
//
//  Created by Tolga İskender on 20.11.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var viewModel = ListViewModel()
  
    var body: some View {
        List {
            Section {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(viewModel.tagArray) { model in
                            TagView(tag: model)
                                .listRowInsets(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                        }
                    }
                }
            }
            Section {
                ForEach(0..<2) { _ in 
                    PostView(userViewisHidden: true, interactionViewisHidden: true)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
               
            }
            Section {
                BreakingNewsCell(model: viewModel.listArray)
                    .listRowInsets(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            }
            Section {
                PostView(userViewisHidden: false, interactionViewisHidden: false)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            Section {
                ShortVideoView()
                    .listRowInsets(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            }
        
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
