import SwiftUI

struct InfoDetailView: View {
    @Environment(\.colorScheme) var colorScheme
    
    let info: InfoData
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text(info.title)
                        .font(.title3)
                        .bold()
                        .padding(.horizontal)
                        .padding(.bottom)
                    Spacer()
                }
                
                if info.withImage {
                    Image(info.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal)
                        .padding(.bottom)
                }
                
                HStack {
                    Text(info.content)
                        .padding(.horizontal)
                        .padding(.bottom)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                
                if info.withLink {
                    HStack {
                        Link(destination: URL(string: info.link)!, label: {
                            Text("링크 : \(info.link)")
                        })
                        .padding(.horizontal)
                        .padding(.bottom)
                        .foregroundStyle(Color(.systemBlue))
                        Spacer()
                    }
                }
                
                Spacer()
            }
        }
        .foregroundStyle(Color(colorScheme == .dark ? .white : .black))
    }
}
