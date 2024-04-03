import SwiftUI

struct InitView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var currentTab: Int = 0
    
    @State private var userName: String = ""
    @FocusState private var nameFocused: Bool
    @State private var showBlankAlert = false
    
    var body: some View {
        TabView(selection: $currentTab, content: {
            VStack {
                Image("계란후라이0")
                    .resizable()
                    .frame(width: 250, height: 110)
                
                Text("EGGO")
                    .font(.system(size: 60, weight: .heavy, design: .rounded))
                    .foregroundStyle(Color(.white))
                    .bold()
                
                Text("Find your EGO with EGGS")
                    .font(.system(size: 13, weight: .heavy, design: .rounded))
                    .foregroundStyle(Color(.white))
                    .bold()
            }
            .tag(0)

            VStack {
                Text("이름을 입력해주세요!")
                    .padding()
                    .font(.system(size: 32, weight: .heavy, design: .rounded))
                    .foregroundStyle(Color(.white))
                    .bold()
                
                TextField(userName, text: $userName, prompt: Text("이름을 입력하세요."))
                    .padding()
                    .textInputAutocapitalization(.words)
                    .disableAutocorrection(true)
                    .focused($nameFocused)
                    .submitLabel(.done)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 300, alignment: .center)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    if userName == "" {
                        showBlankAlert = true
                        nameFocused = true
                    } else {
                        UserData.shared.setUserName(name: userName)
                        dismiss()
                    }
                }, label: {
                    Text("시작하기")
                        .font(.system(size: 20, weight: .heavy, design: .rounded))
                        .foregroundStyle(Color(.white))
                        .bold()
                })
                .padding()
                .buttonStyle(.bordered)
                .tint(.red)
                .foregroundStyle(Color(.white))
            }
            .tag(1)
        })
        .background(Color(.systemOrange))
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .alert("경고", isPresented: $showBlankAlert) {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("확인")
            })
        } message: {
            Text("사용자명 입력란이 공란입니다!")
        }
    }
}
