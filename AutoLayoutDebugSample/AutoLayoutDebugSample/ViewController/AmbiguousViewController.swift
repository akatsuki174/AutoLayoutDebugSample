import UIKit

class AmbiguousViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let blueView = UIView()
        blueView.backgroundColor = UIColor.blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)

        blueView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50.0).isActive = true
        blueView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 30.0).isActive = true

        print(self.view.hasAmbiguity())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
