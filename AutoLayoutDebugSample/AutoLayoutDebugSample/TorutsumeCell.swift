import UIKit

final class TorutsumeCell: UITableViewCell {
    @IBOutlet weak var imageHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var mainImageView: UIImageView!

    static func nib() -> UINib {
        return UINib(nibName: "TorutsumeCell", bundle: nil)
    }

    static var reuseIdentifier: String {
        get { return "TorutsumeCell" }
    }

    func setup(index: Int) {
        if index % 2 == 0 {
            imageHeightConstraint.constant = 60
            imageTopConstraint.constant = 20
        } else {
            imageHeightConstraint.constant = 0
            imageTopConstraint.constant = 0
        }

    }
}
