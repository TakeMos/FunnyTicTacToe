//
//  ContentView.swift
//  TicTacToe
//
//  Created by kim kanghyeok on 8/28/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var id: String = ""
    @State private var pwd: String = ""
    
    var body: some View {
        ZStack {
            Color(.background)
                .ignoresSafeArea()
            VStack {
                
                Text("Tic?")
                    .foregroundStyle(.white)
                    .font(.title)
                Text("Tac..")
                    .foregroundStyle(.white)
                    .font(.title)
                Text("Toe!")
                    .foregroundStyle(.white)
                    .font(.title)
                
                TextField("아이디를 입력해주세요", text: $id)
                    .frame(width: 294)
                    .background(.white)
                    .padding()
                
                TextField("비밀번호를 입력해주세요", text: $pwd)
                    .frame(width: 294)
                    .background(.white)
                    .padding()
                
                Button(action: {
                }, label: {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.btn)
                        .frame(width: 294, height: 102)
                        .overlay(Text("로그인 하기").font(.system(size: 50)).foregroundStyle(.black))
                })
                
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
