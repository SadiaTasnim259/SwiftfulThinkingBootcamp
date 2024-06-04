//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 4/6/24.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0 // 0 theke suru hobe
    
    var body: some View {
        TabView(selection: $selectedTab){
            Text("Home Tab")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(1) //koto number ui theke app suru hobe tar jonno tag
            
            Text("BROWSE TAB")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(2)
            
            Text("Profile Tab")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(0)
                
        }
       // .tint(.yellow)// or accent color should be added
    }
}




struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}
