
import UIKit

class MainViewController: UITableViewController {
    
    var viewModel: TableViewModelType?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows ?? 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        guard let tableViewCell = cell, let viewModel = viewModel else { return UITableViewCell() }
        
        let profile = viewModel.profiles[indexPath.row]
        tableViewCell.nameLabel.text = "\(profile.firstname) \(profile.lastname)"
        tableViewCell.ageLabel.text = "\(profile.age)"

        // Configure the cell...

        return tableViewCell
    }
}
