import UIKit

class AmbiguousViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let blueView = UIView()
        blueView.backgroundColor = UIColor.blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)

        blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        blueView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 30.0).isActive = true

        print(self.view.hasAmbiguity())
        blueView.exerciseAmbiguityInLayoutRepeatedly(recursive: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
