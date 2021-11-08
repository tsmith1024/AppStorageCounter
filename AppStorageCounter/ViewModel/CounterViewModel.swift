import Foundation
import SwiftUI

class CounterViewModel: NSObject, ObservableObject {
    static let myCounterName = "edfarm.appstoragedemo.counter"
    static let myCounterDefault = "0"
    
    @AppStorage(CounterViewModel.myCounterName) var counter: String = CounterViewModel.myCounterDefault

    /*
     To update the stored value we have to:
     - convert from string to int
     - update the value (add or subtract)
     - convert back to string
     - update the stored value
     */
    func updateCounter(by update: Int) {
        if let count = Int(counter) {
            // count is an integer, so we can do math!
            counter = "\(count + update)"
        }
    }
}
