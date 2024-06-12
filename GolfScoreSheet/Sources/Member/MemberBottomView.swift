//
//  MemberBottomView.swift
//  GolfScoreSheet
//
//  Created by 임주영 on 2024/06/12.
//

import SwiftUI

struct MemberBottomView: View {
    @Binding var memberCount: Int
    @Binding var step: PlaygroundStepType
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text(PlaygroundStepType.memberCount.title)
                    .font(.subheadline)
                    
                Spacer()
                HStack(content: {
                    Button(action: {
                        guard memberCount > 0 else { return }
                        memberCount -= 1
                    }, label: {
                        Image(systemName: "minus.circle")
                    })
                    .tint(.black)
                    
                    Text("\(memberCount)")
                    
                    Button(action: {
                        memberCount += 1
                    }, label: {
                        Image(systemName: "plus.circle")
                    })
                    .tint(.black)
                })
            }
            Spacer()
            
            if memberCount > 0 {
                HStack {
                    Spacer()
                    Button {
                        step = step.nextStep ?? .done
                    } label: {
                        Text("다음")
                    }
                }
                .padding(.top, 4)
            }
        }
        .padding(.horizontal, 20)
    }
}
