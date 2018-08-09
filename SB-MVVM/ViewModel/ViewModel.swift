import Foundation

class ViewModel: TableViewViewModelType {
    
    var profiles = [
        Profile(firstname: "Aleksey", lastname: "Kabishau", age: 35),
        Profile(firstname: "Dasha", lastname: "Kabishava", age: 27),
        Profile(firstname: "Elvis", lastname: "", age: 2)
    ]
    
    func numberOfRows() -> Int {
        return profiles.count
    }

    func cellViewModel(for indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
        
    }
}
