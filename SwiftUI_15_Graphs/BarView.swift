
import SwiftUI

struct BarView: View {
    
    var value: Double = 5
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottom) {
                Capsule()
                    .frame(width: 50, height: CGFloat(value))
            }
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
