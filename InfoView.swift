import SwiftUI

struct InfoView: View {
    @Environment(\.dismiss) var dismiss
    
    var infoDataList = [infoData0, infoData1]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("정보 게시판")
                        .font(.title2)
                        .bold()
                        .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "x.circle")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .bold()
                    })
                    .padding()
                }
                .foregroundStyle(Color(.orange))
                
                Spacer()
                
                
                List(infoDataList, id: \.id) { info in
                    NavigationLink(info.title) {
                        InfoDetailView(info: info)
                    }
                }
            }
        }
    }
}

var infoData0 = InfoData(
    id: 0,
    title: "니트생활자",
    withImage: true,
    imageName: "니트생활자",
    content: "우리는 연결된 니트(NEET)의 가능성을 믿고, 다양한 삶이 존중받는 사회를 만듭니다.",
    withLink: true,
    link: "https://neetpeople.kr/about"
)

var infoData1 = InfoData(
    id: 1,
    title: "두더지땅굴",
    withImage: true,
    imageName: "두더지땅굴",
    content: "두더지는 땅 속에서 홀로 생활하지만 가끔씩 바깥으로 나온답니다. 생존을 위해서는 위험을 감수하더라도 땅 밖에서 생활하는 것 역시 필요하기 때문입니다. 코로나19 이후 전세계적으로 다양한 세대의 시민들이 고립감을 호소하고 있습니다. 특히 자립생활로 이행해야 할 청년 세대가 겪는 은둔과 고립은 때로는 세상의 기준과 속도에 끌려오며 상처난 자신을 보듬기 위한 깊은 침잠이거나 때로는 능력주의에 찌든 세상에 대한 저항이며 때로는 그저 더 포용적인 세상과 만나고 싶어 숨을 고르는 시간이기도 합니다.\n\n<두더지땅굴>은 은둔과 고립에 지친 청년들이 서로를 인정하고 환대하며, 땅 위로 나갈 수 있도록 응원하는 온라인 플랫폼입니다. 나와 같은 '상태'의 청년들에게 근황과 안부를 묻고 함께 소소한 활동을 벌이면서 조금씩, 천천히 서로가 서로를 도울 수 있도록 연결합니다.",
    withLink: true,
    link: "https://dudug.kr/"
)
