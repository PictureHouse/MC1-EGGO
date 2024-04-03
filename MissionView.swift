import SwiftUI

struct MissionView: View {
    @State private var showMissionDetail1 = false
    @State private var showMissionDetail2 = false
    @State private var showMissionDetail3 = false
    @State private var showMissionDetail4 = false
    @State private var showMissionDetail5 = false
    @State private var showMissionDetail6 = false
    @State private var showMissionDetail7 = false
    @State private var showMissionDetail8 = false
    @State private var showMissionDetail9 = false
    
    @State private var egg1State = false
    @State private var egg1Done = false
    @State private var egg1Scale = false
    @State private var egg2State = false
    @State private var egg2Done = false
    @State private var egg2Scale = false
    @State private var egg3State = false
    @State private var egg3Done = false
    @State private var egg3Scale = false
    @State private var egg4State = false
    @State private var egg4Done = false
    @State private var egg4Scale = false
    @State private var egg5State = false
    @State private var egg5Done = false
    @State private var egg5Scale = false
    @State private var egg6State = false
    @State private var egg6Done = false
    @State private var egg6Scale = false
    @State private var egg7State = false
    @State private var egg7Done = false
    @State private var egg7Scale = false
    @State private var egg8State = false
    @State private var egg8Done = false
    @State private var egg8Scale = false
    @State private var egg9State = false
    @State private var egg9Done = false
    @State private var egg9Scale = false
    
    @State private var missionList1 = [mission1_1]
    @State private var missionList2 = [mission2_1]
    @State private var missionList3 = [mission3_1]
    @State private var missionList4 = [mission4_1]
    @State private var missionList5 = [mission5_1]
    @State private var missionList6 = [mission6_1]
    @State private var missionList7 = [mission7_1]
    @State private var missionList8 = [mission8_1]
    @State private var missionList9 = [mission9_1]
    
    var body: some View {
        VStack {
            HStack {
                if egg1Done {
                    ZStack {
                        VStack {
                            Image("계란후라이1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 100, height: 130)
                            
                        Image(systemName: "person.3.sequence.fill")
                            .foregroundStyle(Color(.black))
                        
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color(.green))
                            .font(.largeTitle)
                            .bold()
                            .opacity(0.8)
                    }
                    .padding(.leading)
                } else {
                    Button(action: {
                        showMissionDetail1 = true
                    }, label: {
                        if !egg1State {
                            ZStack {
                                Image("계란1")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "person.3.sequence.fill")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail1) {
                                        MissionDetailView(state: $egg1State,done: $egg1Done , mission: missionList1[0])
                                    }
                            }
                            .padding(.leading)
                        } else {
                            ZStack {
                                Image("계란2")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "hourglass")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail1) {
                                        MissionDetailView(state: $egg1State, done: $egg1Done, mission: missionList1[0])
                                    }
                            }
                            .padding(.leading)
                            .scaleEffect(egg1Scale ? 1 : 0.9)
                            .animation(.spring().repeatForever(), value: egg1Scale)
                            .onAppear {
                                withAnimation(.spring().repeatForever()) {
                                    egg1Scale.toggle()
                                }
                            }
                        }
                    })
                }
                
                if egg2Done {
                    ZStack {
                        VStack {
                            Image("계란후라이2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 100, height: 130)
                        
                        Image(systemName: "figure.walk")
                            .foregroundStyle(Color(.black))
                        
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color(.green))
                            .font(.largeTitle)
                            .bold()
                            .opacity(0.8)
                    }
                    .padding()
                } else {
                    Button(action: {
                        showMissionDetail2 = true
                    }, label: {
                        if !egg2State {
                            ZStack {
                                Image("계란1")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "figure.walk")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail2) {
                                        MissionDetailView(state: $egg2State, done: $egg2Done, mission: missionList2[0])
                                    }
                            }
                            .padding()
                        } else {
                            ZStack {
                                Image("계란2")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "hourglass")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail2) {
                                        MissionDetailView(state: $egg2State, done: $egg2Done, mission: missionList2[0])
                                    }
                            }
                            .padding()
                            .scaleEffect(egg2Scale ? 1 : 0.9)
                            .animation(.spring().repeatForever(), value: egg2Scale)
                            .onAppear {
                                withAnimation(.spring().repeatForever()) {
                                    egg2Scale.toggle()
                                }
                            }
                        }
                    })
                }
                
                if egg3Done {
                    ZStack {
                        VStack {
                            Image("계란후라이3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 100, height: 130)
                        
                        Image(systemName: "figure.cooldown")
                            .foregroundStyle(Color(.black))
                        
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color(.green))
                            .font(.largeTitle)
                            .bold()
                            .opacity(0.8)
                    }
                    .padding(.trailing)
                } else {
                    Button(action: {
                        showMissionDetail3 = true
                    }, label: {
                        if !egg3State {
                            ZStack {
                                Image("계란1")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "figure.cooldown")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail3) {
                                        MissionDetailView(state: $egg3State, done: $egg3Done, mission: missionList3[0])
                                    }
                            }
                            .padding(.trailing)
                        } else {
                            ZStack {
                                Image("계란2")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "hourglass")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail3) {
                                        MissionDetailView(state: $egg3State, done: $egg3Done, mission: missionList3[0])
                                    }
                            }
                            .padding(.trailing)
                            .scaleEffect(egg3Scale ? 1 : 0.9)
                            .animation(.spring().repeatForever(), value: egg3Scale)
                            .onAppear {
                                withAnimation(.spring().repeatForever()) {
                                    egg3Scale.toggle()
                                }
                            }
                        }
                    })
                }
            }
            
            HStack {
                if egg4Done {
                    ZStack {
                        VStack {
                            Image("계란후라이2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 100, height: 130)
                        
                        Image(systemName: "headphones")
                            .foregroundStyle(Color(.black))
                        
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color(.green))
                            .font(.largeTitle)
                            .bold()
                            .opacity(0.8)
                    }
                    .padding(.leading)
                } else {
                    Button(action: {
                        showMissionDetail4 = true
                    }, label: {
                        if !egg4State {
                            ZStack {
                                Image("계란1")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "headphones")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail4) {
                                        MissionDetailView(state: $egg4State, done: $egg4Done, mission: missionList4[0])
                                    }
                            }
                            .padding(.leading)
                        } else {
                            ZStack {
                                Image("계란2")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "hourglass")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail4) {
                                        MissionDetailView(state: $egg4State, done: $egg4Done, mission: missionList4[0])
                                    }
                            }
                            .padding(.leading)
                            .scaleEffect(egg4Scale ? 1 : 0.9)
                            .animation(.spring().repeatForever(), value: egg4Scale)
                            .onAppear {
                                withAnimation(.spring().repeatForever()) {
                                    egg4Scale.toggle()
                                }
                            }
                        }
                    })
                }
                
                if egg5Done {
                    ZStack {
                        VStack {
                            Image("계란후라이3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 100, height: 130)
                        
                        Image(systemName: "book.fill")
                            .foregroundStyle(Color(.black))
                        
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color(.green))
                            .font(.largeTitle)
                            .bold()
                            .opacity(0.8)
                    }
                    .padding()
                } else {
                    Button(action: {
                        showMissionDetail5 = true
                    }, label: {
                        if !egg5State {
                            ZStack {
                                Image("계란1")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "book.fill")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail5) {
                                        MissionDetailView(state: $egg5State, done: $egg5Done, mission: missionList5[0])
                                    }
                            }
                            .padding()
                        } else {
                            ZStack {
                                Image("계란2")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "hourglass")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail5) {
                                        MissionDetailView(state: $egg5State, done: $egg5Done, mission: missionList5[0])
                                    }
                            }
                            .padding()
                            .scaleEffect(egg5Scale ? 1 : 0.9)
                            .animation(.spring().repeatForever(), value: egg5Scale)
                            .onAppear {
                                withAnimation(.spring().repeatForever()) {
                                    egg5Scale.toggle()
                                }
                            }
                        }
                    })
                }
                
                if egg6Done {
                    ZStack {
                        VStack {
                            Image("계란후라이1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 100, height: 130)
                        
                        Image(systemName: "pencil.and.scribble")
                            .foregroundStyle(Color(.black))
                        
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color(.green))
                            .font(.largeTitle)
                            .bold()
                            .opacity(0.8)
                    }
                    .padding(.trailing)
                } else {
                    Button(action: {
                        showMissionDetail6 = true
                    }, label: {
                        if !egg6State {
                            ZStack {
                                Image("계란1")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "pencil.and.scribble")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail6) {
                                        MissionDetailView(state: $egg6State, done: $egg6Done, mission: missionList6[0])
                                    }
                            }
                            .padding(.trailing)
                        } else {
                            ZStack {
                                Image("계란2")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "hourglass")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail6) {
                                        MissionDetailView(state: $egg6State, done: $egg6Done, mission: missionList6[0])
                                    }
                            }
                            .padding(.trailing)
                            .scaleEffect(egg6Scale ? 1 : 0.9)
                            .animation(.spring().repeatForever(), value: egg6Scale)
                            .onAppear {
                                withAnimation(.spring().repeatForever()) {
                                    egg6Scale.toggle()
                                }
                            }
                        }
                    })
                }
            }
            
            
            HStack {
                if egg7Done {
                    ZStack {
                        VStack {
                            Image("계란후라이3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 100, height: 130)
                        
                        Image(systemName: "frying.pan")
                            .foregroundStyle(Color(.black))
                            
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color(.green))
                            .font(.largeTitle)
                            .bold()
                            .opacity(0.8)
                    }
                    .padding(.leading)
                } else {
                    Button(action: {
                        showMissionDetail7 = true
                    }, label: {
                        if !egg7State {
                            ZStack {
                                Image("계란1")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "frying.pan")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail7) {
                                        MissionDetailView(state: $egg7State, done: $egg7Done, mission: missionList7[0])
                                    }
                            }
                            .padding(.leading)
                        } else {
                            ZStack {
                                Image("계란2")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "hourglass")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail7) {
                                        MissionDetailView(state: $egg7State, done: $egg7Done, mission: missionList7[0])
                                    }
                            }
                            .padding(.leading)
                            .scaleEffect(egg7Scale ? 1 : 0.9)
                            .animation(.spring().repeatForever(), value: egg7Scale)
                            .onAppear {
                                withAnimation(.spring().repeatForever()) {
                                    egg7Scale.toggle()
                                }
                            }
                        }
                    })
                }
                
                if egg8Done {
                    ZStack {
                        VStack {
                            Image("계란후라이1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 100, height: 130)
                        
                        Image(systemName: "trash")
                            .foregroundStyle(Color(.black))
                        
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color(.green))
                            .font(.largeTitle)
                            .bold()
                            .opacity(0.8)
                    }
                    .padding()
                } else {
                    Button(action: {
                        showMissionDetail8 = true
                    }, label: {
                        if !egg8State {
                            ZStack {
                                Image("계란1")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "trash")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail8) {
                                        MissionDetailView(state: $egg8State, done: $egg8Done, mission: missionList8[0])
                                    }
                            }
                            .padding()
                        } else {
                            ZStack {
                                Image("계란2")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "hourglass")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail8) {
                                        MissionDetailView(state: $egg8State, done: $egg8Done, mission: missionList8[0])
                                    }
                            }
                            .padding()
                            .scaleEffect(egg8Scale ? 1 : 0.9)
                            .animation(.spring().repeatForever(), value: egg8Scale)
                            .onAppear {
                                withAnimation(.spring().repeatForever()) {
                                    egg8Scale.toggle()
                                }
                            }
                        }
                    })
                }
                
                if egg9Done {
                    ZStack {
                        VStack {
                            Image("계란후라이2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(width: 100, height: 130)
                        
                        Image(systemName: "gamecontroller")
                            .foregroundStyle(Color(.black))
                        
                        Image(systemName: "checkmark")
                            .foregroundStyle(Color(.green))
                            .font(.largeTitle)
                            .bold()
                            .opacity(0.8)
                    }
                    .padding(.trailing)
                } else {
                    Button(action: {
                        showMissionDetail9 = true
                    }, label: {
                        if !egg9State {
                            ZStack {
                                Image("계란1")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "gamecontroller")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail9) {
                                        MissionDetailView(state: $egg9State, done: $egg9Done, mission: missionList9[0])
                                    }
                            }
                            .padding(.trailing)
                        } else {
                            ZStack {
                                Image("계란2")
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                
                                Image(systemName: "hourglass")
                                    .foregroundStyle(Color(.black))
                                    .font(.title)
                                    .sheet(isPresented: $showMissionDetail9) {
                                        MissionDetailView(state: $egg9State, done: $egg9Done, mission: missionList9[0])
                                    }
                            }
                            .padding(.trailing)
                            .scaleEffect(egg9Scale ? 1 : 0.9)
                            .animation(.spring().repeatForever(), value: egg9Scale)
                            .onAppear {
                                withAnimation(.spring().repeatForever()) {
                                    egg9Scale.toggle()
                                }
                            }
                        }
                    })
                }
            }
        }
    }
}

var mission1_1 = MissionData(
    missionStatus: false,
    missionType: 1,
    missionTitle: "친한 친구에게 연락하기",
    withImage: true,
    imageName: "social1",
    missionDetail: "친한 친구에게 가볍게 연락해보는 것은 어떨까요?",
    withLink: false,
    link: "",
    withMap: false,
    latitude: 0,
    longitude: 0
)

var mission2_1 = MissionData(
    missionStatus: false,
    missionType: 2,
    missionTitle: "철길숲 산책",
    withImage: true,
    imageName: "walking1",
    missionDetail: "철길숲 산책 가보셨나요?\n포항에서 산책하기 좋은 공원 중에 하나라고 해요!\n이번 기회에 산책을 한번 가보는 것은 어떨까요?",
    withLink: false,
    link: "",
    withMap: true,
    latitude: 36.01271,
    longitude: 129.3415
)

var mission3_1 = MissionData(
    missionStatus: false,
    missionType: 3,
    missionTitle: "가벼운 스트레칭 1분 동안 하기",
    withImage: true,
    imageName: "workout1",
    missionDetail: "지금 있는 자리에서 간편하게 할 수 있는 스트레칭을 해볼까요?\n앉아서 하는 스트레칭, 서서 하는 스트레칭 뭐든 좋아요!",
    withLink: false,
    link: "",
    withMap: false,
    latitude: 0,
    longitude: 0
)

var mission4_1 = MissionData(
    missionStatus: false,
    missionType: 4,
    missionTitle: "마음이 편해지는 음악 듣기",
    withImage: true,
    imageName: "music1",
    missionDetail: "마음이 편해지는 음악 플레이리스트를 추천해드릴게요.\n아래 링크로 접속하면 플레이리스트가 재생됩니다.\n음악을 들으면서 여유를 느껴보세요!",
    withLink: true,
    link: "https://youtu.be/jBufpcb95p8?si=-Pz-UGiP95YGCPVI",
    withMap: false,
    latitude: 0,
    longitude: 0
)

var mission5_1 = MissionData(
    missionStatus: false,
    missionType: 5,
    missionTitle: "아무 책이나 읽어보기",
    withImage: true,
    imageName: "reading1",
    missionDetail: "혹시 주변에 아직 읽지 않은 책이 있지 않나요?\n그 책을 이번 기회에 읽어보는 것은 어떨까요?",
    withLink: false,
    link: "",
    withMap: false,
    latitude: 0,
    longitude: 0
)

var mission6_1 = MissionData(
    missionStatus: false,
    missionType: 6,
    missionTitle: "지금 나의 감정 적어보기",
    withImage: true,
    imageName: "writing1",
    missionDetail: "자신을 성찰하는 방법에는 자신의 감정을 직접 적어보는 방법도 있습니다.\n짧아도 괜찮으니 지금 자신의 감정을 한번 적어볼까요?",
    withLink: false,
    link: "",
    withMap: false,
    latitude: 0,
    longitude: 0
)

var mission7_1 = MissionData(
    missionStatus: false,
    missionType: 7,
    missionTitle: "계란후라이 해먹기",
    withImage: true,
    imageName: "cooking1",
    missionDetail: "혹시 지금 출출하신가요?\n그렇다면 간식으로 계란후라이를 해먹어 볼까요?",
    withLink: false,
    link: "",
    withMap: false,
    latitude: 0,
    longitude: 0
)

var mission8_1 = MissionData(
    missionStatus: false,
    missionType: 8,
    missionTitle: "침대 이불 정리하기",
    withImage: true,
    imageName: "cleaning1",
    missionDetail: "혹시 아침에 기상하고 침대 이불 정리하셨나요?\n안하셨으면 지금 정리해볼까요?\n이미 정리하셨으면 미션 달성입니다!",
    withLink: false,
    link: "",
    withMap: false,
    latitude: 0,
    longitude: 0
)

var mission9_1 = MissionData(
    missionStatus: false,
    missionType: 9,
    missionTitle: "힐링게임 해보셨나요?",
    withImage: true,
    imageName: "game1",
    missionDetail: "힐링게임을 통해서도 마음의 안정을 찾을 수 있다고 합니다.\n힐링게임 한번 해보시겠어요?",
    withLink: true,
    link: "https://apps.apple.com/kr/app/%ED%8F%AC%EB%A0%88%EC%8A%A4%ED%8A%B8-%EC%95%84%EC%9D%BC%EB%9E%9C%EB%93%9C/id1581726035",
    withMap: false,
    latitude: 0,
    longitude: 0
)
