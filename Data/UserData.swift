import Foundation
import SwiftUI

class UserData {
    @AppStorage("userName") private var userName = ""
    
    @AppStorage("tabViewDefault") private var tabViewDefault = false
    
    @AppStorage("totalMissionComplete") private var totalMissionComplete = 0
    @AppStorage("socialMissionComplete") private var socialMissionComplete = 0
    @AppStorage("walkingMissionComplete") private var walkingMissionComplete = 0
    @AppStorage("workoutMissionComplete") private var workoutMissionComplete = 0
    @AppStorage("musicMissionComplete") private var musicMissionComplete = 0
    @AppStorage("readingMissionComplete") private var readingMissionComplete = 0
    @AppStorage("writingMissionComplete") private var writingMissionComplete = 0
    @AppStorage("cookingMissionComplete") private var cookingMissionComplete = 0
    @AppStorage("cleaningMissionComplete") private var cleaningMissionComplete = 0
    @AppStorage("gameMissionComplete") private var gameMissionComplete = 0
    
    static let shared = UserData()
    
    func setUserName(name: String) {
        self.userName = name
    }
    
    func getUserName() -> String {
        return self.userName
    }
    
    func setTabViewDefault(select: Bool) {
        self.tabViewDefault = select
    }
    
    func getTabViewDefault() -> Bool {
        return self.tabViewDefault
    }
    
    func getTotalMissionComplete() -> Int {
        return self.totalMissionComplete
    }
    
    func getSocialMissionComplete() -> Int {
        return self.socialMissionComplete
    }
    
    func getWalkingMissionComplete() -> Int {
        return self.walkingMissionComplete
    }
    
    func getWorkoutMissionComplete() -> Int {
        return self.workoutMissionComplete
    }
    
    func getMusicMissionComplete() -> Int {
        return self.musicMissionComplete
    }
    
    func getReadingMissionComplete() -> Int {
        return self.readingMissionComplete
    }
    
    func getWritingMissionComplete() -> Int {
        return self.writingMissionComplete
    }
    
    func getCookingMissionComplete() -> Int {
        return self.cookingMissionComplete
    }
    
    func getCleaningMissionComplete() -> Int {
        return self.cleaningMissionComplete
    }
    
    func getGameMissionComplete() -> Int {
        return self.gameMissionComplete
    }
    
    func addCompleteMission(type: Int) {
        switch type {
        case 1:
            self.socialMissionComplete += 1
            self.totalMissionComplete += 1
        case 2:
            self.walkingMissionComplete += 1
            self.totalMissionComplete += 1
        case 3:
            self.workoutMissionComplete += 1
            self.totalMissionComplete += 1
        case 4:
            self.musicMissionComplete += 1
            self.totalMissionComplete += 1
        case 5:
            self.readingMissionComplete += 1
            self.totalMissionComplete += 1
        case 6:
            self.writingMissionComplete += 1
            self.totalMissionComplete += 1
        case 7:
            self.cookingMissionComplete += 1
            self.totalMissionComplete += 1
        case 8:
            self.cleaningMissionComplete += 1
            self.totalMissionComplete += 1
        case 9:
            self.gameMissionComplete += 1
            self.totalMissionComplete += 1
        default:
            self.totalMissionComplete += 0
        }
    }
    
    func refreshMission() {
        self.totalMissionComplete = 0
        self.socialMissionComplete = 0
        self.walkingMissionComplete = 0
        self.workoutMissionComplete = 0
        self.musicMissionComplete = 0
        self.readingMissionComplete = 0
        self.writingMissionComplete = 0
        self.cookingMissionComplete = 0
        self.cleaningMissionComplete = 0
        self.gameMissionComplete = 0
    }
}
