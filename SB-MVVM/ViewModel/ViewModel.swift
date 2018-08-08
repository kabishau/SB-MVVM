import Foundation

class ViewModel: TableViewModelType {
    
    var profiles = [
        Profile(firstname: "Aleksey", lastname: "Kabishau", age: 35),
        Profile(firstname: "Dasha", lastname: "Kabishava", age: 27),
        Profile(firstname: "Elvis", lastname: "", age: 2)
    ]
    
    var numberOfRows: Int {
        return profiles.count
    }

}
