import UIKit

final class StackViewLayoutViewController: UIViewController {
    @IBOutlet weak var baseStackView: UIStackView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var outputGreenViewConstraintsButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        outputGreenViewConstraintsButton.titleLabel?.numberOfLines = 0
        outputGreenViewConstraintsButton.titleLabel?.lineBreakMode = .byWordWrapping
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func outputBaseStackViewConstraint(_ sender: Any) {
        self.view.constraintsReferringView(view: baseStackView)
    }
    
    @IBAction func outputGreenViewConstraints(_ sender: Any) {
        print(greenView.constraintsAffectingLayout(for: .vertical))
    }
}
