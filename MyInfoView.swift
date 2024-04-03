import SwiftUI

struct MyInfoView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var tabViewDefault = UserData.shared.getTabViewDefault()
    
    private var userName = UserData.shared.getUserName()
    private var totalMissionComplete = UserData.shared.getTotalMissionComplete()
    
    var body: some View {
        VStack {
            HStack {
                if userName != "" {
                    Text("\(userName)님의 미션 현황 정보")
                        .font(.title2)
                        .bold()
                        .padding()
                } else {
                    Text("미션 현황 정보")
                        .font(.title2)
                        .bold()
                        .padding()
                }
                
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
            
            TabView(selection: $tabViewDefault) {
                VStack {
                    Section {
                        AttainmentView()
                    } header: {
                        SectionHeaderView(title: "미션 달성 세부 현황(총 \(totalMissionComplete)개의 미션 달성!)", icon: "checkmark")
                    }
                    Spacer()
                }
                .tabItem {
                    Label("미션 달성 세부 현황", systemImage: "circle.grid.3x3.fill")
                }.tag(false)
                
                if #available(iOS 17.0, *) {
                    VStack {
                        Section {
                            if totalMissionComplete != 0 {
                                PieChartView()
                                    .padding()
                                    .frame(height: 350)
                            } else {
                                Text("미션을 달성하면 차트가 표시됩니다.\n첫 미션에 도전해볼까요?")
                                    .padding()
                                    .multilineTextAlignment(.center)
                            }
                        } header: {
                            SectionHeaderView(title: "미션 달성 추세(총 \(totalMissionComplete)개의 미션 달성!)", icon: "chart.pie")
                        }
                        
                        Spacer()
                    }
                    .tabItem {
                        Label("미션 달성 통계", systemImage: "chart.pie.fill")
                    }.tag(true)
                }
            }
        }
    }
}
