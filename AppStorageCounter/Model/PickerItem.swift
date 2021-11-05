import Foundation

struct PickerItem: Identifiable {
    var id: Int
    var title: String
}

let demoItems = [
    PickerItem(id: 1, title: "Item 1"),
    PickerItem(id: 2, title: "Item 2"),
    PickerItem(id: 3, title: "Item 3"),
    PickerItem(id: 4, title: "Item 4")
]
