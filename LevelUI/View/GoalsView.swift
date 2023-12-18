//
//  GoalsView.swift
//  LevelUI
//
//  Created by Palak on 18/12/23.
//

import SwiftUI

struct GoalsView: View {
    var body: some View {
        VStack{
            Text("Must Do For your Goals")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.trailing,120)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(0..<3){ _ in
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 330, height: 200)
                                .foregroundColor(.blue.opacity(0.7))
                                .overlay(
                                    HStack{
                                        ZStack{
                                            VStack{
                                                ZStack{
                                                    Text("Day 2: Steps To Recharge")
                                                        .font(.title3)
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(.white)
                                                        .multilineTextAlignment(.leading)
                                                        .padding(.bottom,100)
                                                    Text("Meditation \nCoach - Muskan")
                                                        .font(.custom("Arial", size: 17))
                                                        .foregroundColor(.white)
                                                        .multilineTextAlignment(.leading)
                                                        .padding(.trailing, 110)
                                                        .padding(.bottom,25)
                                                    HStack{
                                                        Text("⚡️ 10 XP")
                                                            .foregroundColor(.white)
                                                        Text("🕣 10 mins")
                                                            .foregroundColor(.white)
                                                            .padding()
                                                    }.padding(.top, 150)
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
                                                .padding(.top,90)
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
    GoalsView()
}
