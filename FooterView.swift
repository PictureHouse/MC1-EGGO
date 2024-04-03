import SwiftUI

struct FooterView: View {
    @State private var openMyInfo = false
    
    var body: some View {
        HStack {
            Button(action: {
                openMyInfo = true
            }, label: {
                Image("계란후라이0")
                    .resizable()
                    .frame(width: 140, height: 70)
            })
            .sheet(isPresented: $openMyInfo) {
                MyInfoView()
            }
        }
    }
}
