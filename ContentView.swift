import SwiftUI

struct ContentView: View {
    @State var rotation = 0
    var body: some View {
        VStack {
           
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: 75, y: 300))  
                    path.addLine(to: CGPoint(x: 0, y: 150))
                    path.addLine(to: CGPoint(x: 150, y: 150))
                    path.closeSubpath()
                }
                Circle()
                    .foregroundStyle(.white)
                    .frame(width: 550, height: 550)
                Circle()
                    .fill(
                        AngularGradient(
                            gradient: Gradient(colors: [.red, .black, .red, .black, .red, .black, Color .red, .black, .red, .black, .red, .black, .red, .black, .red, .black, .red, .black, .red, .black, .red, .black, .red, .black, .green,]),
                            center: .center))
                    .frame(width: 500, height: 500)
                    .onTapGesture{
                    }
                Circle()
                    .foregroundStyle(.yellow)
                    .frame(width: 100, height: 100)
                Circle()
                    .foregroundStyle(.brown)
                    .frame(width: 50, height: 50)
                Circle()
                
            }
        }
    }
}
