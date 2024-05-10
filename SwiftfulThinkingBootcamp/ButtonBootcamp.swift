//
//  ButtonBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 10/5/24.
//

import SwiftUI

struct ButtonBootcamp: View {
    var body: some View {
        Button {
            
        } label: {
            Circle()
                .foregroundColor(.white)
                .frame(width: 75, height: 75)
                .shadow(radius: 10)
                .overlay {
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color("cayenne"))
                }
                
        }

    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
