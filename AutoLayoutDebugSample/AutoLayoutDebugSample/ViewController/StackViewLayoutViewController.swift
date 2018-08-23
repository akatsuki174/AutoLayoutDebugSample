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
        // self.viewとbaseStackViewに関連する制約だけを出力
        self.view.outputConstraintsReferringView(view: baseStackView)
    }
    
    @IBAction func outputGreenViewConstraints(_ sender: Any) {
        let alert = UIAlertController(title: "Output constraints", message: "Which axis?", preferredStyle: .actionSheet)
        let horizontal = UIAlertAction(title: "Horizontal", style: .default, handler: { [weak self] _ in
            let constraints = self?.greenView.constraintsAffectingLayout(for: .horizontal)
            constraints?.forEach { print($0) }
        })
        let vertical = UIAlertAction(title: "Vertical", style: .default, handler: { [weak self] _ in
            let constraints = self?.greenView.constraintsAffectingLayout(for: .vertical)
            constraints?.forEach { print($0) }
        })
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(horizontal)
        alert.addAction(vertical)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)
    }
}
