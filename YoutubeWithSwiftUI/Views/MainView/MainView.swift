//
//  CustomNavbar.swift
//  YoutubeWithSwiftUI
//
//  Created by Tolga İskender on 20.11.2020.
//  Copyright © 2020 Tolga İskender. All rights reserved.
//

import SwiftUI

struct MainView: View {
    //var view = UIView()
    init() {
        UITableView.appearance().contentInset.top = -35 // to remove top space of list
    }
    var body: some View {
        NavigationView {
            TabView {
                ListView()
                    .tabItem {
                        Image("home")
                        Text("Home")
                }.tag(0)
                Text("Second View")
                    .tabItem {
                        Image("explore")
                        Text("Explore")
                }.tag(1)
                Text("Third View")
                    .tabItem {
                        Image("plus")
                }.tag(2)
                Text("Fourth View")
                    .tabItem {
                        Image("subs")
                        Text("Subscriptions")
                }.tag(3)
                Text("Fifth View")
                    .tabItem {
                        Image("library")
                        Text("Library")
                }.tag(4)
            }  .accentColor(.black)
                .navigationBarTitle("") //Set title to none so that it won't put the bottom title
                .navigationBarItems(leading:
                    Image("YoutubeLogo")
                    //This is the plus button, on the right side, aka trailing view
                    , trailing: Button(action: {
                        
                    }, label: {
                        
                        Image("ring").padding(.trailing,15)
                        Image("search").padding(.trailing,15)
                        Image("user")
                    }).foregroundColor(.black))
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
