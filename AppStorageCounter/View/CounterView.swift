import SwiftUI

struct CounterView: View {
    @StateObject var viewModel = CounterViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.counter)
                .padding()
            HStack {
                Button(action: {
                    viewModel.updateCounter(by: -1)
                }) {
                    Text("Down")
                }
                .padding(.horizontal, 20)

                Button(action: {
                    viewModel.updateCounter(by: 1)
                }) {
                    Text("Up")
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
