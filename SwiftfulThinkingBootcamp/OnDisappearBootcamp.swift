//
//  OnDisappearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 4/6/24.
//

import SwiftUI

struct OnDisappearBootcamp: View {
    @State var myText = "Start Text"
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    myText = "This is the new text"
                }
            }
            .onDisappear{
                myText = "Ending Text"
            }
            .navigationTitle("ON Disappear Bootcamp") // jaoar somoy kichu korte chaile eta use korte hoi- jemon cleaning
        }
    }
}

struct OnDisappearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnDisappearBootcamp()
    }
}
