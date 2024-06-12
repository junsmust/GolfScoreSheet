//
//  PlaygroundStepType.swift
//  GolfScoreSheet
//
//  Created by 임주영 on 2024/06/12.
//

import Foundation

enum PlaygroundStepType: Int {
    case memberCount
    case memberName
    case golfParkName
    case holeCount
    case done
    
    var title: String {
        switch self {
        case .memberCount:
            return "플레이는 몇명인가요?"
            
        case .memberName:
            return "플에어의 이름을 지정해주세요"
            
        case .golfParkName:
            return "어디 골프장으로 가셨나요?"
            
        case .holeCount:
            return "몇개의 홀이 있나요?"
            
        case .done:
            return "플레이를 시작하겠습니다."
        }
    }
    
    var nextStep: Self? {
        PlaygroundStepType(rawValue: self.rawValue + 1)
    }
}
