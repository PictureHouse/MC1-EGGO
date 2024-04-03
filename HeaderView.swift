import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("EGGO")
                    .font(.system(size: 36, weight: .heavy, design: .rounded))
                    .bold()
                Spacer()
                
                NavigationLink {
                    InfoView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Image(systemName: "info.bubble")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .bold()
                        .padding(5)
                }
                
                NavigationLink {
                    SettingsView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Image(systemName: "gearshape")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .bold()
                }
            }
        }
        .foregroundStyle(Color(.orange))
    }
}
