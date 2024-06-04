//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 4/6/24.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText = "Start Text"
    @State var count = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                    }
                }
            }
            .navigationTitle("On Appear: \(count)")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
