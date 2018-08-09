import Foundation

// in case we have different viewModels to be displayed in view controller?

protocol TableViewViewModelType {
    
    func numberOfRows() -> Int
    
    func cellViewModel(for indexPath: IndexPath) -> TableViewCellViewModelType?

}
