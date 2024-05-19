//
//  MainView.swift
//  GolfScoreSheet
//
//  Created by 임주영 on 2024/05/19.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Play")
                .foregroundStyle(.green)
        })
        .padding(10)
        .background(.white)
        .cornerRadius(8.0)
        .shadow(radius: 3)
    }
}

#Preview {
    MainView()
}
