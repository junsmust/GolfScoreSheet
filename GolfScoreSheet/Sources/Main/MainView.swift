//
//  MainView.swift
//  GolfScoreSheet
//
//  Created by 임주영 on 2024/05/19.
//

import SwiftUI

struct MainView: View {
    @State var isPlayPressed: Bool = false
    @State var step: PlaygroundStepType = .memberCount
    
    @State var memberCount: Int = 0 {
        didSet {
            print("member count : \(memberCount)")
        }
    }
    
    var body: some View {
        VStack(content: {
            Button(action: {
                isPlayPressed.toggle()
            }, label: {
                Text("Play")
                    .foregroundStyle(.green)
            })
        })
        .padding(10)
        .background(.white)
        .cornerRadius(8.0)
        .shadow(radius: 3)
        .sheet(isPresented: $isPlayPressed, content: {
            switch step {
            case .memberCount:
                MemberBottomView(memberCount: $memberCount, step: $step)
                    .presentationDetents([])
                    .presentationDetents([.fraction(0.2)])
                    .presentationDragIndicator(.hidden)
                
            default:
                PlayerNameInputBottomView()
                    .presentationDetents([])
                    .presentationDetents([.fraction(0.2)])
                    .presentationDragIndicator(.hidden)
            }
        })
    }
}


#Preview {
    MainView()
}
