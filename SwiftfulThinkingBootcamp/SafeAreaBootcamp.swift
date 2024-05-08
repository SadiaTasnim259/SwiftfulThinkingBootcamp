//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 8/5/24.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        VStack {
            Text("Title Goes Here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 20)
            
            ScrollView{
                VStack {
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundColor(.white)
                            .frame(height: 180)
                            .shadow(radius: 15)
                            .padding(15)
                    }
                }
            }
            //.padding(.top, 2)
        }
        .background(Color("background"))
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
