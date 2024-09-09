import SwiftUI

struct MarkSelectView: View {
    
    var body: some View {
        ZStack {
            
            Color(.background)
                .ignoresSafeArea()
            Color(.table)
                .frame(width: 393, height: 696)
            VStack {
                Spacer()
                Button(action: {
                    
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 184, height: 184)
                            .foregroundStyle(.btn)
                        Image("cross")
                    }
                })
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 184, height: 184)
                            .foregroundStyle(.btn)
                        Image("circle")
                    }
                })
                Spacer()
            }
        }
    }
}

#Preview {
    MarkSelectView()
}
