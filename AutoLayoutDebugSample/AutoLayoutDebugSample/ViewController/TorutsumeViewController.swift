import UIKit

final class TorutsumeViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TorutsumeCell.nib(), forCellReuseIdentifier: TorutsumeCell.reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension TorutsumeViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TorutsumeCell.reuseIdentifier) as? TorutsumeCell else { fatalError() }
        return cell
    }

}
