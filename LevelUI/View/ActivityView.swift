//
//  ActivityView.swift
//  LevelUI
//
//  Created by Palak on 18/12/23.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        VStack{
            Text("Activity Routine")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.trailing,190)
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack(spacing: 20) {
                        ForEach(0..<3){ _ in
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 360, height: 150)
                                .foregroundColor(.blue.opacity(0.7))
                                .overlay(
                                    HStack{
                                        ZStack{
                                            VStack{
                                                ZStack{
                                                    Text("Gratitude")
                                                        .font(.title2)
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.white)
                                                        .multilineTextAlignment(.leading)
                                                        .padding(.bottom,80)
                                                        .padding(.trailing, 140)
                                                    Text("Journal")
                                                        .font(.custom("Arial", size: 18))
                                                        .foregroundColor(.white)
                                                        .multilineTextAlignment(.leading)
                                                        .padding(.trailing, 170)
                                                        .padding(.bottom,25)
                                                    HStack{
                                                        Text("⚡️ 10 XP")
                                                            .foregroundColor(.white)
                                                        Text("🕣 10 mins")
                                                            .foregroundColor(.white)
                                                            .padding()
                                                    }.padding(.top, 100)
                                                        .padding(.trailing,50)
                                                }
                                            }
                                            .padding(.trailing, 80)
                                            Spacer()
                                            
                                            Image(systemName: "person.fill")
                                                .resizable()
                                                .foregroundColor(.white)
                                                .frame(width: 100,height:100)
                                                .padding(.leading,200)
                                                .padding(.top,40)
                                        }
                                    }
                                )
                        }
                    }
                }.padding(.leading,17).padding(.top, 20)
        }
    }
}

#Preview {
    ActivityView()
}
