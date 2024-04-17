//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 17/4/24.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    let aplhabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<26) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<26) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 200, height: 140)
                                    .foregroundColor(.white)
                                    .shadow(radius: 10)
                                    .padding()
                                    .overlay(alignment: .center) {
                                        Text(aplhabet[index])
                                            .font(.largeTitle)
                                            
                                    }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
