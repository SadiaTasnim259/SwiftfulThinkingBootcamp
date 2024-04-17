//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 16/4/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data:[String] = ["Hi"]
    let myString:String = "Hello"
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("NEW ITEM: \(index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
