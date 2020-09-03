

import SwiftUI

struct ContentView: View {
    
    @State private var picker = 0
    
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Grafica de barras")
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .padding(.bottom)
                
                Picker(selection: self.$picker, label: Text("")) {
                    Text("Dia").tag(0)
                    Text("Semana").tag(1)
                    Text("Mes").tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        if self.picker == 0 {
                            ForEach(dayData) { barItem in
                                BarView(barData: barItem)
                            }
                        } else if self.picker == 1 {
                            ForEach(weekData) { barItem in
                                BarView(barData: barItem)
                            }
                        } else if self.picker == 2 {
                            ForEach(monthData) { barItem in
                                BarView(barData: barItem)
                            }
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                }
                .padding(16)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
