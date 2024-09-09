import SwiftUI
import FirebaseAuth

struct SignUpView: View {
    
    @State private var id: String = ""
    @State private var pwd: String = ""
    @State private var isAuth: Bool = false
    @State private var empty: Bool = true
    @State private var name: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.background)
                    .ignoresSafeArea()
                
                VStack {
                    
                    TextField("이름", text: $name)
                        .padding()
                        .frame(width: 294, height: 35)
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 5))
                    
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
                        if id != "" && pwd != "" {
                            isAuth = SignIn(id: id, pwd: pwd)
                        }
                        
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
    
    func SignIn(id: String, pwd: String) -> Bool {
        var isAuth: Bool = false
        
        Auth.auth().createUser(withEmail: id, password: pwd) { authResult, error in
            if let error = error {
                print("로그인 오류")
            } else {
                print("로그인 성공")
                isAuth = true
            }
        }
        return isAuth
    }
}

#Preview {
    SignUpView()
}
