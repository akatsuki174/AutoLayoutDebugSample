import UIKit

final class CoverViewController: UIViewController {
    private let coverView = CoverView()

    override func viewDidLoad() {
        super.viewDidLoad()
        coverView.show(in: self.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
