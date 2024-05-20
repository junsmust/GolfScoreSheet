//
//  MainView.swift
//  GolfScoreSheet
//
//  Created by 임주영 on 2024/05/19.
//

import SwiftUI

struct MainView: View {
    @State var isPlayPressed: Bool = false
    
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
            BottomSheetView()
                .presentationDetents([.cus])
                //.presentationDetents([.fraction(0.2)])
                .presentationDragIndicator(.hidden)
        })
    }
}

struct BottomSheetView: View {
    var body: some View {
        HStack(content: {
            Text("플레이는 몇명인가요?")
                .font(.subheadline)
                
            Spacer()
            HStack(content: {
                Button(action: {}, label: {
                    Image(systemName: "minus.circle")
                })
                .tint(.black)
                
                Text("0")
                
                Button(action: {}, label: {
                    Image(systemName: "plus.circle")
                })
                .tint(.black)
            })
        })
        .padding(.horizontal, 20)
    }
}
#Preview {
    MainView()
}
