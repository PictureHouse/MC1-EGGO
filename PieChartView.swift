import SwiftUI
import Charts

struct DoneData: Identifiable {
    let id: Int
    let title: String
    let value: Int
}

struct PieChartView: View {
    @State private var data: [DoneData] = [
        .init(id: 1, title: "인간관계", value: UserData.shared.getSocialMissionComplete()),
        .init(id: 2, title: "산책", value: UserData.shared.getWalkingMissionComplete()),
        .init(id: 3, title: "운동", value: UserData.shared.getWorkoutMissionComplete()),
        .init(id: 4, title: "음악", value: UserData.shared.getMusicMissionComplete()),
        .init(id: 5, title: "읽기", value: UserData.shared.getReadingMissionComplete()),
        .init(id: 6, title: "글쓰기", value: UserData.shared.getWritingMissionComplete()),
        .init(id: 7, title: "요리", value: UserData.shared.getCookingMissionComplete()),
        .init(id: 8, title: "청소", value: UserData.shared.getCleaningMissionComplete()),
        .init(id: 9, title: "게임", value: UserData.shared.getGameMissionComplete())
    ]
    
    var body: some View {
        if #available(iOS 17.0, *) {
            Chart(data) { data in
                SectorMark(angle: .value(data.title, data.value), innerRadius: .ratio(0.4), angularInset: 2)
                    .foregroundStyle(by: .value(Text(data.title), data.title))
            }
            .chartLegend(position: .bottom, spacing: 30)
            .frame(width: 320, height: 350)
            .scaledToFit()
        }
    }
}
