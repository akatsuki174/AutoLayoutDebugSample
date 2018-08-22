import UIKit

final class StackViewLayoutViewController: UIViewController {
    @IBOutlet weak var baseStackView: UIStackView!
    @IBOutlet weak var greenView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tappedButton(_ sender: Any) {
//        print(greenView.constraintsAffectingLayout(for: .vertical))
        self.view.constraintsReferringView(view: baseStackView)
    }
    
}
