import SwiftUI

struct ModeSelectView: View {
    @State private var name: String = ""
    
    var body: some View {
        ZStack {
            Color(.background)
                .ignoresSafeArea()
            Color(.table)
                .frame(width: 393, height: 696)
             
            VStack {
                
                HStack {
                    Text("안녕하세요 \(name) 님")
                        .font(.system(size: 30))
                        .foregroundStyle(.white)
                        .padding(.leading)
                        .padding(.top, 50)
                    Spacer()
                }
                
                Spacer()
                Button(action: {
                    
                }, label: {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 294, height: 102)
                        .foregroundStyle(.btn)
                        .overlay(Text("싱글 플레이").font(.system(size: 40)).foregroundStyle(.black))
                })
                .padding()
                
                Button(action: {
                    
                }, label: {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 294, height: 102)
                        .foregroundStyle(.btn)
                        .overlay(Text("로컬 플레이").font(.system(size: 40)).foregroundStyle(.black))
                })
                .padding()
                
                Button(action: {
                    
                }, label: {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 294, height: 102)
                        .foregroundStyle(.btn)
                        .overlay(Text("멀티 플레이").font(.system(size: 40)).foregroundStyle(.black))
                })
                .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    ModeSelectView()
}
