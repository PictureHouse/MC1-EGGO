import SwiftUI

struct AttainmentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    ZStack {
                        Image("계란후라이1")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        Image(systemName: "person.3.sequence.fill")
                            .foregroundStyle(Color(.black))
                    }
                    
                    Text("\(UserData.shared.getSocialMissionComplete())개 달성")
                }
                .padding(.leading)
                
                VStack {
                    ZStack {
                        Image("계란후라이2")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        Image(systemName: "figure.walk")
                            .foregroundStyle(Color(.black))
                    }
                    
                    Text("\(UserData.shared.getWalkingMissionComplete())개 달성")
                }
                .padding()
                
                VStack {
                    ZStack {
                        Image("계란후라이3")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        Image(systemName: "figure.cooldown")
                            .foregroundStyle(Color(.black))
                    }
                    
                    Text("\(UserData.shared.getWorkoutMissionComplete())개 달성")
                }
                .padding(.trailing)
            }
            
            
            HStack {
                VStack {
                    ZStack {
                        Image("계란후라이2")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        Image(systemName: "headphones")
                            .foregroundStyle(Color(.black))
                    }
                    
                    Text("\(UserData.shared.getMusicMissionComplete())개 달성")
                }
                .padding(.leading)
                
                VStack {
                    ZStack {
                        Image("계란후라이3")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        Image(systemName: "book.fill")
                            .foregroundStyle(Color(.black))
                    }
                    
                    Text("\(UserData.shared.getReadingMissionComplete())개 달성")
                }
                .padding()
                
                VStack {
                    ZStack {
                        Image("계란후라이1")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        Image(systemName: "pencil.and.scribble")
                            .foregroundStyle(Color(.black))
                    }
                    
                    Text("\(UserData.shared.getWritingMissionComplete())개 달성")
                }
                .padding(.trailing)
            }
            
            HStack {
                VStack {
                    ZStack {
                        Image("계란후라이3")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        Image(systemName: "frying.pan")
                            .foregroundStyle(Color(.black))
                    }
                    
                    Text("\(UserData.shared.getCookingMissionComplete())개 달성")
                }
                .padding(.leading)
                
                VStack {
                    ZStack {
                        Image("계란후라이1")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        Image(systemName: "trash")
                            .foregroundStyle(Color(.black))
                    }
                    
                    Text("\(UserData.shared.getCleaningMissionComplete())개 달성")
                }
                .padding()
                
                VStack {
                    ZStack {
                        Image("계란후라이2")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        Image(systemName: "gamecontroller")
                            .foregroundStyle(Color(.black))
                    }
                    
                    Text("\(UserData.shared.getGameMissionComplete())개 달성")
                }
                .padding(.trailing)
            }
        }
        .foregroundStyle(Color(colorScheme == .dark ? .white : .black))
    }
}
