import Foundation
import SwiftUI

class PickerViewModel: NSObject, ObservableObject {
    @AppStorage("edfarm.appstoragedemo.selections") var selections: String = "[]"
    @Published var items: [PickerItem]

    init(items: [PickerItem]) {
        self.items = items
        super.init()
    }

    /*
     To use the data stored in app storage,
     we have to decode it from a string
     into a useful array of integers.
     We can then check this array to see if
     it contains the id of a given item and
     update the bookmark display for that item.
     This check is done in the view in this example
     */
    var selectionList: [Int] {
        let decoder = JSONDecoder()
        var results: [Int] = []
        if let data = selections.data(using: .utf8),
           let decoded = try? decoder.decode([Int].self, from: data) {
            results = decoded
        }

        return results
    }

    /*
     When we toggle an item, we have to:
     - add item to or remove item from the decoded list
     - encode the updated list
     - update selections value to trigger storage
     */
    func toggleItem(id: Int) {
        var currentList = selectionList
        if currentList.contains(id) {
            currentList.removeAll(where: { $0 == id })
        } else {
            currentList.append(id)
        }

        let encoder = JSONEncoder()
        if let encodedData = try? encoder.encode(currentList),
           let encodedString = String(data: encodedData, encoding: .utf8) {
            selections = encodedString
        }
    }
}
