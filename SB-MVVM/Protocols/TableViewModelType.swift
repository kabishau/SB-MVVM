import Foundation

// in case we have different viewModels to be displayed in view controller
protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
