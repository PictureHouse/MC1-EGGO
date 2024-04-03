import SwiftUI

struct AppMainView: View {
    let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
    @State private var presentInitModal = false
    
    var body: some View {
        NavigationView {
            VStack {
                if !launchedBefore {
                    HeaderView()
                        .onAppear(perform: {
                            presentInitModal = true
                        })
                        .fullScreenCover(isPresented: $presentInitModal, content: {
                            InitView()
                                .onDisappear(perform: {
                                    UserDefaults.standard.set(true, forKey: "launchedBefore")
                                })
                        })
                } else {
                    HeaderView()
                }
                
                Divider()
                    .padding(.bottom)
                
                HStack {
                    Text("👋 안녕하세요! 새로운 미션을 선택해볼까요?\n미션은 매일 카테고리마다 하나씩 수행할 수 있어요!")
                        .foregroundStyle(Color(.orange))
                    Spacer()
                }
                
                MissionView()
                
                Spacer()
                
                FooterView()
            }
            .padding()
        }
    }
}
