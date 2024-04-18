//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 18/4/24.
//

import SwiftUI

struct GridBootcamp: View {

    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    var body: some View {
        ScrollView {

            Rectangle()
                .fill(Color("rectangle"))
                .frame(height: 400)
            LazyVGrid(columns: columns, alignment: .center, spacing: 6, pinnedViews: [.sectionHeaders]) {


                Section {
                    ForEach(0..<21) { index in
                        Rectangle()
                            .fill(Color("row1"))
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color("sectionColor"))
                        .padding()
                }
             //   footer: {
//                    Text("Section 1 Footer")
//                        .foregroundColor(.white)
//                        .font(.title)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .background(Color("sectionColor"))
//                        .padding()
//                }

              

                Section {
                    ForEach(0..<21) { index in
                        Rectangle()
                            .fill(Color("row2"))
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color("sectionColor"))
                        .padding()
                }
            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
