//
//  GeometryReaderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 2/6/24.
//

import SwiftUI

struct GeometryReaderBootcamp: View {
    var body: some View {
        GeometryReader{geometry in
            HStack(spacing:0) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: geometry.size.width*0.66)
                Rectangle()
                    .fill(Color.blue)
                    //.frame(width: UIScreen.main.bounds.width*0.33)
            }.ignoresSafeArea()
        }
        
        
    }
}

struct GeometryReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderBootcamp()
    }
}
