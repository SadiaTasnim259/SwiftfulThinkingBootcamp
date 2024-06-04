//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sadia on 4/6/24.
//

import SwiftUI

struct UserModel:Identifiable{
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}
struct ModelBootcamp: View {
    @State var users:[UserModel] = [
    UserModel(displayName: "Junaed", userName: "@JC", followerCount: 250, isVerified: true),
    UserModel(displayName: "Sadia", userName: "@Sai_25", followerCount: 361, isVerified: true),
    UserModel(displayName: "Mahira", userName: "@Vurki", followerCount: 20, isVerified: false),
    UserModel(displayName: "Zakia", userName: "@NimTas", followerCount: 1000, isVerified: true),
    UserModel(displayName: "Safin", userName: "@Votla", followerCount: 55, isVerified: false),
    UserModel(displayName: "Taher", userName: "@AbuT", followerCount: 120, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack {
                        HStack {
                            Circle()
                                .frame(width: 35, height: 35)
                                .foregroundColor(Color.black)
                            VStack(alignment: .leading) {
                                Text(user.displayName)
                                    .font(.headline)
                                Text(user.userName)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                        Spacer()
                        if user.isVerified  {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(Color.gray)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
