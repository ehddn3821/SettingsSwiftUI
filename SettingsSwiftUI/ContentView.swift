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
                    NavigationLink(destination: Text("프로필 화면")) {
                        HStack {
                            Image(systemName: "airplane")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .padding(.all, 10)
                                .background(.green)
                                .clipShape(Circle())
                            VStack(alignment: .leading, spacing: 3) {
                                Text("강동우")
                                    .font(.system(size: 24))
                                    .fontWeight(.regular)
                                Text("Apple ID, iCloud, 미디어 및 구입")
                                    .font(.system(size: 14))
                            }.padding(.leading, 6)
                        }.padding(.vertical, 10)
                    }
                }
                Section {
                    makeSettingsItem("에어플레인 모드", imgName: "airplane", imgColor: .orange)
                    makeSettingsItem("Wi-Fi", imgName: "wifi", imgColor: .blue)
                    makeSettingsItem("Bluetooth", imgName: "bluetooth", imgColor: .blue, isSymbol: false)
                    makeSettingsItem("셀룰러", imgName: "antenna.radiowaves.left.and.right", imgColor: .green)
                }
                Section {
                    makeSettingsItem("알림", imgName: "bell.badge.fill", imgColor: .red)
                    makeSettingsItem("사운드 및 햅틱", imgName: "speaker.wave.3.fill", imgColor: .red)
                    makeSettingsItem("집중 모드", imgName: "moon.fill", imgColor: .indigo)
                    makeSettingsItem("스크린 타임", imgName: "hourglass", imgColor: .indigo)
                }
                Section {
                    Group {
                        makeSettingsItem("일반", imgName: "gear", imgColor: .gray)
                        makeSettingsItem("제어 센터", imgName: "switch.2", imgColor: .gray)
                        makeSettingsItem("디스플레이 및 밝기", imgName: "textformat.size", imgColor: .blue)
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
    
    private func makeSettingsItem(_ title: String,
                                  imgName: String,
                                  imgColor: Color,
                                  isSymbol: Bool = true) -> some View {
        var img: Image
        img = isSymbol ? Image(systemName: imgName) : Image(imgName).renderingMode(.template)
        
        return HStack {
            img.resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(4)
                .background(imgColor)
                .foregroundColor(.white)
                .cornerRadius(6)
                .padding(.trailing, 8)
            NavigationLink(title) {
                Text("스크린 타임 화면")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
