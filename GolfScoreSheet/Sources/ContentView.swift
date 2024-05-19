import SwiftUI

public struct ContentView: View {
    @State private var isMainScreenShow: Bool = false
    
    public init() {}

    public var body: some View {
        if isMainScreenShow {
            MainView()
        }
        else {
            SplashView().onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now()+1.5) {
                    withAnimation {
                        isMainScreenShow = true
                    }
                }
            })
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
