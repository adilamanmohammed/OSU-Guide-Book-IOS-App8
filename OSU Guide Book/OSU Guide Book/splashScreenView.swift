import SwiftUI

struct splashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    @Environment(\.colorScheme) var colorScheme
    
    
    
    var body: some View {
        
        if isActive {
            campusView() // Make sure this view exists in your project
        } else {
            VStack {
                
                VStack {
                    Image("osuLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                        .frame(height: 100)
                    
                    Text("OSU Guide Book")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear() {
                    withAnimation(.easeOut(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    splashScreenView()
}
