import UIKit

class TopTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension TopTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return VCType.allCases.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = VCType.allCases[indexPath.row].rawValue
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboardName = capitalizingFirstLetter(str: VCType.allCases[indexPath.row].rawValue)
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        guard let vc = storyboard.instantiateInitialViewController() else { return }
        vc.title = storyboardName
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension TopTableViewController {
    /// 先頭の文字を大文字にする
    func capitalizingFirstLetter(str: String) -> String {
        let lowerStr = str.lowercased()
        return String(lowerStr.prefix(1).uppercased()) + String(str.dropFirst())
    }
}
