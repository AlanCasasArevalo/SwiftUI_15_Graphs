
import SwiftUI

struct BarView: View {
    
    var barData: MockBarData
    @State private var heightBar = 0

    var body: some View {
        VStack {
            ZStack (alignment: .bottom) {
                Capsule()
                    .frame(width: 20, height: 200)
                    .foregroundColor(Color(.systemGray))
                Capsule()
                    .frame(width: 22, height: CGFloat(heightBar))
                    .foregroundColor(Color(.white))
                .animation(.default)

            }
            Text(barData.day)
                .font(.system(.callout, design: .rounded))
                .bold()
                .foregroundColor(Color(.darkGray))
        }
        .onAppear {
            self.heightBar = self.heightBar + self.barData.amount
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(barData: MockBarData(amount: 20, day: "Lunes")).previewLayout(.fixed(width: 200, height: 400))
    }
}
