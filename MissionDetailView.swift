import SwiftUI
import MapKit

struct MissionDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var showCompleteMessage = false
    
    @Binding var state: Bool
    @Binding var done: Bool
    let mission: MissionData
    
    var body: some View {
        VStack {
            HStack {
                Text("미션 정보")
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
            
            HStack {
                Text(mission.missionTitle)
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)
                    .padding(.bottom)
                Spacer()
            }
            
            if mission.withImage {
                Image(mission.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                    .padding(.bottom)
            }
            
            HStack {
                Text(mission.missionDetail)
                    .padding(.horizontal)
                    .padding(.bottom)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            
            if mission.withLink && mission.link != "" {
                HStack {
                    Link(destination: URL(string: mission.link)!, label: {
                        Text("링크 접속하기")
                    })
                    .padding(.horizontal)
                    .padding(.bottom)
                    .foregroundStyle(Color(.systemBlue))
                    Spacer()
                }
            }
            
            if mission.withMap, #available(iOS 17.0, *) {
                Map(bounds: MapCameraBounds(minimumDistance: 400)) {
                    Marker(mission.missionTitle, coordinate: CLLocationCoordinate2D(latitude: mission.latitude, longitude: mission.longitude))
                        .tint(.orange)
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
                
            if state {
                Button(action: {
                    UserData.shared.addCompleteMission(type: mission.missionType)
                    state.toggle()
                    done.toggle()
                    showCompleteMessage = true
                }, label: {
                    Text("완료!")
                })
                .buttonStyle(.borderedProminent)
            } else {
                Button(action: {
                    state.toggle()
                    dismiss()
                }, label: {
                    Text("도전!")
                })
                .buttonStyle(.borderedProminent)
            }
            
            Spacer()
        }
        .alert("미션 완료!", isPresented: $showCompleteMessage) {
            Button(action: {
                dismiss()
            }, label: {
                Text("확인")
            })
        } message: {
            Text("미션 완료를 축하드려요!")
        }
    }
}
