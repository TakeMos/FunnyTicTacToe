import SwiftUI
import FirebaseAuth

struct SignUpView: View {
    
    @State private var id: String = ""
    @State private var pwd: String = ""
    @State private var isAuth: Bool = false
    @State private var empty: Bool = true
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.background)
                    .ignoresSafeArea()
                
                VStack {
                    
                    TextField("아이디를 입력해주세요", text: $id)
                        .padding()
                        .frame(width: 294, height: 35)
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 5))
                    
                    TextField("비밀번호를 입력해주세요", text: $pwd)
                        .padding()
                        .frame(width: 294, height: 35)
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 5))
                        .padding(5)
                        .padding(.bottom, 5)
                    
                    Button(action: {
                        isAuth = true
                    }, label: {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.btn)
                            .frame(width: 294, height: 51)
                            .overlay(Text("가입하기").font(.system(size: 20)).foregroundStyle(.black))
                    })
                    .navigationDestination(isPresented: $isAuth) {
                        LoginView()
                    }
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    SignUpView()
}
