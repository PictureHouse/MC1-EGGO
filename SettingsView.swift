import SwiftUI

struct SettingsView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.dismiss) var dismiss
    
    @State private var userName: String = UserData.shared.getUserName()
    @FocusState private var nameFocused: Bool
    @State private var nameChanged = false
    
    @State private var tabViewDefault: Bool = UserData.shared.getTabViewDefault()
     
    @State private var showRefreshAlert = false
    @State private var showRefreshDoneAlert = false
    @State private var showSaveAlert = false
    @State private var showBlankAlert = false
    @State private var showCancelAlert = false
        
    var body: some View {
        VStack {
            HStack {
                Text("설정")
                    .font(.title2)
                    .bold()
                    .padding()
                
                Spacer()
                
                Button(action: {
                    if userName == UserData.shared.getUserName() {
                        dismiss()
                    } else {
                        showCancelAlert = true
                    }
                }, label: {
                    Image(systemName: "x.circle")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .bold()
                })
                .padding()
            }
            .foregroundStyle(Color(.orange))
            
            Section {
                TextField(userName, text: $userName, prompt: Text(userName))
                    .padding(.leading)
                    .padding(.trailing)
                    .foregroundStyle(Color(colorScheme == .dark ? .white : .black))
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .focused($nameFocused)
                    .submitLabel(.done)
                    .textFieldStyle(.roundedBorder)
            } header: {
                SectionHeaderView(title: "사용자명", icon: "person.fill")
            }
            
            if #available(iOS 17.0, *) {
                Section {
                    HStack {
                        Text("미션 달성 세부 현황")
                        
                        Toggle("미션 현황 기본탭 설정", isOn: $tabViewDefault)
                            .labelsHidden()
                            .tint(.orange)
                            
                        Text("미션 달성 통계")
                    }
                    .foregroundStyle(Color(colorScheme == .dark ? .white : .black))
                } header: {
                    SectionHeaderView(title: "미션 현황 기본탭 설정", icon: !tabViewDefault ? "slider.horizontal.below.square.filled.and.square" : "slider.horizontal.below.square.and.square.filled")
                        .padding(.top)
                }
            }
            
            HStack {
                Button(action: {
                    if userName == "" {
                        showBlankAlert = true
                        nameFocused = true
                    } else {
                        if userName != UserData.shared.getUserName() {
                            UserData.shared.setUserName(name: userName)
                            nameChanged = true
                        }
                        UserData.shared.setTabViewDefault(select: tabViewDefault)
                        showSaveAlert = true
                    }
                }, label: {
                    Text("저장")
                })
                .buttonStyle(.borderedProminent)
                .foregroundStyle(Color(.white))
                
                Button(action: {
                    if userName == UserData.shared.getUserName() {
                        dismiss()
                    } else {
                        showCancelAlert = true
                    }
                }, label: {
                    Text("취소")
                })
                .buttonStyle(.bordered)
                .foregroundStyle(Color(colorScheme == .dark ? .white : .black))
            }
            .padding()
            
            Divider()
                .padding()
            
            Section {
                VStack {
                    Text("현재까지 달성한 미션 기록이 초기화됩니다.")
                        .padding()
                    
                    Button(action: {
                        showRefreshAlert = true
                    }, label: {
                        Text("초기화하기")
                    })
                    .buttonStyle(.bordered)
                }
                .foregroundStyle(Color(colorScheme == .dark ? .white : .black))
            } header: {
                SectionHeaderView(title: "미션 기록 초기화", icon: "arrow.clockwise")
            }
            
            Spacer()
        }
        .confirmationDialog("경고", isPresented: $showCancelAlert) {
            Button(role: .cancel) {
                nameFocused = true
            } label: {
                Text("취소")
            }
                    
            Button(action: {
                dismiss()
            }, label: {
                Text("나가기")
            })
        } message: {
            Text("저장하지 않고 창을 벗어날 경우 입력한 데이터가 삭제됩니다.")
        }
        .confirmationDialog("미션 데이터 초기화", isPresented: $showRefreshAlert) {
            Button(role: .cancel) {
            } label: {
                Text("취소")
            }
            
            Button(role: .destructive) {
                UserData.shared.refreshMission()
                showRefreshDoneAlert = true
            } label: {
                Text("초기화")
            }
        } message: {
            Text("미션 데이터를 초기화하시겠습니까?")
        }
        .alert("초기화 성공", isPresented: $showRefreshDoneAlert) {
            Button(action: {
                dismiss()
            }, label: {
                Text("확인")
            })
        } message: {
            Text("미션 데이터가 초기화되었습니다.")
        }
        .alert("저장 성공", isPresented: $showSaveAlert) {
            Button(action: {
                dismiss()
            }, label: {
                Text("확인")
            })
        } message: {
            if nameChanged {
                Text("성공적으로 저장했습니다.\n변경된 사용자명은 앱을 재실행할 경우 반영됩니다.")
            } else {
                Text("성공적으로 저장했습니다.")
            }
        }
        .alert("경고", isPresented: $showBlankAlert) {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("확인")
            })
        } message: {
            Text("사용자명 입력란이 공란입니다!")
        }
    }
}
