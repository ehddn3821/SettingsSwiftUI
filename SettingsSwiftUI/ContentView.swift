//
//  ContentView.swift
//  SettingsSwiftUI
//
//  Created by dwKang on 2023-01-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    Text("강동우")
                }
                Section {
                    Text("에어플레인 모드")
                    Text("Wi-Fi")
                    Text("Bluetooth")
                    Text("셀룰러")
                }
                Section {
                    Text("알림")
                    Text("사운드 및 햅틱")
                    Text("집중 모드")
                    HStack {
                        Image(systemName: "hourglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(4)
                            .background(.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                            .padding(.trailing, 10)
                        NavigationLink("스크린 타임") {
                            Text("스크린 타임 화면")
                        }
                    }
                }
                Section {
                    Group {
                        Text("일반")
                        Text("제어 센터")
                        Text("디스플레이 및 밝기")
                        Text("홈 화면")
                        Text("손쉬운 사용")
                        Text("배경화면")
                        Text("Siri 및 검색")
                        Text("Face ID 및 암호")
                        Text("긴급 구조 요청")
                        Text("노출 알림")
                    }
                    Text("배터리")
                    Text("개인정보 보호 및 보안")
                }
                Section {
                    Text("App Store")
                    Text("지갑")
                }
                Section {
                    Group {
                        Text("암호")
                        Text("Mail")
                        Text("연락처")
                        Text("캘린더")
                        Text("메모")
                        Text("미리 알림")
                        Text("음성 메모")
                        Text("전화")
                        Text("메시지")
                        Text("FaceTime")
                    }
                    Text("Safari")
                    Text("날씨")
                    Text("번역")
                    Text("나침반")
                    Text("측정")
                    Text("단축어")
                    Text("건강")
                    Text("홈")
                }
            }.navigationBarTitle("설정")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
