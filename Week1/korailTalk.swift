//
//  ContentView.swift
//  ExampleApp
//
//  Created by 김소현 on 2022/09/21.
//

import SwiftUI

struct ContentView: View {
    @State var firstCityName: String = ""
    
    var body: some View {
        VStack {
            
            Text("승차권 예매")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .padding(.top, 20)
            
            
            VStack {
                HStack{
                    // 기차 이미지
                    Image(systemName: "train.side.rear.car")
                        .foregroundColor(Color(hue: 0.632, saturation: 1.0, brightness: 1.0, opacity: 0.757))
                        .font(.title)
                    
                    Image(systemName: "train.side.middle.car")
                        .foregroundColor(Color(hue: 0.632, saturation: 1.0, brightness: 1.0, opacity: 0.757))
                        .font(.title)
                        .padding(.leading, -10)
                    
                    Image(systemName: "train.side.front.car")
                        .foregroundColor(Color(hue: 0.632, saturation: 1.0, brightness: 1.0, opacity: 0.757))
                        .font(.title)
                        .padding(.leading, -10)
                }
                .padding(.top, 50)
                
                HStack(spacing: 130.0) {
                    Text("출발역")
                        .font(.body)
                    Text("도착역")
                        .font(.body)
                }
                .padding(.bottom, 10)
                .padding(.top, 40)
                
                HStack(spacing: 48.0) {
                    Text("서울")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .underline()
                    
                    Image(systemName: "arrow.left.arrow.right")
                        .font(.title2)
                        .foregroundColor(Color(hue: 0.632, saturation: 1.0, brightness: 1.0, opacity: 0.757))
                    
                    Text("대전")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .padding(.bottom, 50)
            }
            
            List{
                
                TextField("KTX 출발 역을 입력해주세요", text: $firstCityName)
                    .padding()
                    .background(Color(uiColor: .white))
                    .textFieldStyle(.roundedBorder)
                
                Text("대전역")
                Text("서울역")
                Text("포항역")
                Text("동대구역")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
