//
//  HeadView.swift
//  LevelUI
//
//  Created by Palak on 18/12/23.
//

import SwiftUI

struct HeadView: View {
    var body: some View {
        HStack(spacing: 20){
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .opacity(0.2)
                .frame(width: 80, height: 80)
                .overlay(
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 50, height: 50,alignment: .center)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .opacity(0.8)
                        .fontWeight(.bold)
                )
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.blue.opacity(0.7), lineWidth: 2)
                .foregroundColor(.white)
                .frame(width: 250, height:80)
                .overlay(
                    VStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue.opacity(0.8))
                            .frame(width: 250, height: 40)
                            .offset(y:-9)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.blue.opacity(0.7), lineWidth: 2)
                                    .frame(width: 250, height: 40)
                                    .offset(y:-9))
                            .overlay(
                                HStack{
                                    Spacer()
                                    Text("1090 XP")
                                        .padding()
                                }.font(.footnote)
                                    .fontWeight(.semibold)
                                    .padding([.trailing, .leading, .bottom], 10)
                            )
                        HStack{
                            Text("Level 9")
                            Spacer()
                            Text("30 XP To Level 10")
                        }.font(.footnote)
                            .fontWeight(.semibold)
                            .padding([.trailing, .leading], 10)
                    }
                )
            
        }
    }
}

#Preview {
    HeadView()
}
