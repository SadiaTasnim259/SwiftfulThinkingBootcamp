//
//  NavigationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 4/6/24.
//

import SwiftUI

struct NavigationBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Go to other screen", destination: MyOtherScreen())
                
                Text("Hello,World")
                Text("Hello,World")
                Text("Hello,World")
                Text("Hello,World")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct MyOtherScreen: View{
    var body: some View{
   
            
                ZStack {
                    Color.indigo.edgesIgnoringSafeArea(.all)
                    
                    NavigationLink("Go to 3rd screen", destination: ThirdScreen())
                }.navigationTitle("Other Screen")
                //.navigationBarHidden(true)
            
        
    }
}

struct ThirdScreen: View{
    var body: some View{
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            
        }
        .navigationTitle("3rd Screen")
    }
}


struct NavigationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootcamp()
    }
}
