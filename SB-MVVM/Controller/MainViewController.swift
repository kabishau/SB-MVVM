
import UIKit

class MainViewController: UITableViewController {
    
    var profiles: [Profile]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        profiles = [
            Profile(firstname: "Aleksey", lastname: "Kabishau", age: 35),
            Profile(firstname: "Dasha", lastname: "Kabishava", age: 27),
            Profile(firstname: "Elvis", lastname: "", age: 2)
        ]

    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profiles.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        guard let tableViewCell = cell else { return UITableViewCell() }
        let profile = profiles[indexPath.row]
        tableViewCell.nameLabel.text = "\(profile.firstname) \(profile.lastname)"
        tableViewCell.ageLabel.text = "\(profile.age)"

        // Configure the cell...

        return tableViewCell
    }
}
