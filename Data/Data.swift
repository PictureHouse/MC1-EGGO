import Foundation

struct InfoData: Identifiable {
    var id: Int
    var title: String
    var withImage: Bool
    var imageName: String
    var content: String
    var withLink: Bool
    var link: String
}

struct MissionData {
    var missionStatus: Bool
    var missionType: Int
    var missionTitle: String
    var withImage: Bool
    var imageName: String
    var missionDetail: String
    var withLink: Bool
    var link: String
    var withMap: Bool
    var latitude: Double
    var longitude: Double
}
