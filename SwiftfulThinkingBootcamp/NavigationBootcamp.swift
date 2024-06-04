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
                
                ForEach(0..<50) { _ in
                    Text("Hello,World")
                }
                
              
               
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(.indigo)
                        Image(systemName: "flame.fill")
                            .foregroundColor(.red)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: FavoriteView()) {
                        Image(systemName: "book.circle.fill")
                            .foregroundColor(.green)
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                    }
                    
                }
                
            }
            //.navigationBarItems(leading: Image(systemName: "person.fill"), trailing: Image(systemName: "heart.fill"))
        }
    }
}


struct MyOtherScreen: View{
    var body: some View{
   
            
                ZStack {
                    Color.indigo.ignoresSafeArea()
                    
                    NavigationLink( destination: ThirdScreen()){
                        Text("Go to 3rd screen")
                            .foregroundColor(Color.white)
                    }
                }.navigationTitle("Other Screen")
                //.navigationBarHidden(true)
            
        
    }
}

struct ThirdScreen: View{
    @Environment(\.dismiss) private var dismiss
    
    var body: some View{
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                Button("Go back") {
                    dismiss()
                }
            }
        }
        .navigationTitle("3rd Screen")
        .navigationBarBackButtonHidden(true)
    }
}

struct FavoriteView: View{
    @Environment(\.dismiss) private var dismiss
    var body: some View{
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Button("Go Back to Inbox") {
                    dismiss()
                }
            }
        }
        .navigationTitle("Favorite View")
        
    }
}

struct NavigationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootcamp()
    }
}
