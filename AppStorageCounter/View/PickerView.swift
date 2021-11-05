import SwiftUI

struct PickerView: View {
    @StateObject var viewModel = PickerViewModel(items: demoItems)

    var body: some View {
        VStack {
            ForEach(viewModel.items) { item in
                HStack {
                    Text("\(item.title)")
                    Spacer()
                    Button(action: {
                        viewModel.toggleItem(id: item.id)
                    }) {
                        if viewModel.selectionList.contains(item.id) {
                            Image(systemName: "bookmark.fill")
                        } else {
                            Image(systemName: "bookmark")
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}


