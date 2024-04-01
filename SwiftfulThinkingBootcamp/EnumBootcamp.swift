//
//  EnumBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 1/4/24.
//

import SwiftUI

struct EnumBootcamp: View {
    enum SocialPlatform: String{
        case twitter,facebook,instagram,linkedIn
    }
    func sharedImage(on platform: SocialPlatform){
        switch platform{
        case .twitter:
            print("Very imformative")
        case .facebook:
            print("Garbage")
        case .instagram:
            print("Never used it")
        case .linkedIn:
            print("I love this")
        }
    }
    var body: some View {
        VStack{
            Button {
                sharedImage(on: .twitter)
            }label: {
                Text("Twitter")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
                    .padding()
            }
            Button {
                sharedImage(on: .facebook)
            } label: {
                Text("Facebook")
                    .font(.largeTitle)
                    .foregroundColor(.indigo)
                    .padding()
            }
            Button {
                sharedImage(on: .instagram)
            } label: {
                Text("Instagram")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding()
            }
            Button {
                sharedImage(on: .linkedIn)
            } label: {
                Text("LinkedIn")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
            }
        }
        //.frame(width: .infinity, height: .infinity)
    }
}

struct EnumBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnumBootcamp()
    }
}
