//
//  BindingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 30/5/24.
//

import SwiftUI

struct BindingView: View {
    
    @State var backgroundColor: Color = Color.teal
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    var body: some View{
        Button {
            backgroundColor = Color.indigo
        } label: {
            Text("PRESS")
                .foregroundColor(.white)
                .font(.title)
                .padding(.horizontal)
                .background()
                .frame(width: 60, height: 50)
        }

    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
