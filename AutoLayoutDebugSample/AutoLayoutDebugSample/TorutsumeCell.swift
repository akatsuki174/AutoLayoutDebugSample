import UIKit

final class TorutsumeCell: UITableViewCell {
    static func nib() -> UINib {
        return UINib(nibName: "TorutsumeCell", bundle: nil)
    }

    static var reuseIdentifier: String {
        get { return "TorutsumeCell" }
    }

    func setup() {

    }
}
