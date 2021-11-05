import Foundation
import SwiftUI

class CounterViewModel: NSObject, ObservableObject {
    @AppStorage("edfarm.appstoragedemo.counter") var counter: String = "0"

    /*
     To update the stored value we have to:
     - convert from string to int
     - update the value (add or subtract)
     - convert back to string
     - update the stored value
     */
    func updateCounter(by update: Int) {
        if let count = Int(counter) {
            counter = "\(count + update)"
        }
    }
}
