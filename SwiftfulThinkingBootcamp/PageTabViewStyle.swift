//
//  PageTabViewStyle.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 4/6/24.
//

import SwiftUI

struct PageTabViewStyle: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.red)
            RoundedRectangle(cornerRadius: 20)
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.green)
        }
        .frame(height: 300)
        .tabViewStyle(.page)
    }
}

struct PageTabViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        PageTabViewStyle()
    }
}
