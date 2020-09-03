

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.blue
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Grafica de barras")
                    .font(.system(.title, design: .rounded))
                    .bold()
                
                BarView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
