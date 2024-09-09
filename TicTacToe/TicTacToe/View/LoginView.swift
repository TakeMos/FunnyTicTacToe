import SwiftUI
import FirebaseAuth

struct LoginView: View {
    
    @State private var id: String = ""
    @State private var pwd: String = ""
    @State private var isSign: Bool = false
    @State private var isLogin: Bool = false
    
    var body: some View {
        NavigationStack {
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
                    Spacer()
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
                        isLogin = Login(id: id, pwd: pwd)
                        
                    }, label: {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.btn)
                            .frame(width: 294, height: 51)
                            .overlay(Text("로그인").font(.system(size: 20)).foregroundStyle(.black))
                    })
                    .padding(.bottom, 30)
//                    .navigationDestination(isPresented: $isLogin) {
//                        ModeSelectView(name: name)
//                    }
                    ZStack {
                        Rectangle()
                            .frame(width: 294, height: 50)
                            .foregroundStyle(.white)
                        
                        HStack {
                            Text("계정이 없으신가요?")
                            Button(action: {
                                isSign = true
                            }, label: {
                                Text("가입하기")
                            })
                        }
                    }
                    Spacer()
                }
                .navigationBarBackButtonHidden()
                .navigationDestination(isPresented: $isSign, destination: {
                    SignUpView()
                })
                .padding()
            }
        }
    }
    
    func Login(id: String, pwd: String) -> Bool {
        var isLogin: Bool = false
        Auth.auth().signIn(withEmail: id, password: pwd) { authResult, error in
            if let error = error {
                print("로그인 실패: \(error)")
            } else {
                print("로그인 완료")
                isSign = true
            }
        }
        
        return isSign
    }
}

#Preview {
    LoginView()
}
