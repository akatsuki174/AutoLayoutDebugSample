import UIKit

final class MultiHierarchyViewController: UIViewController {
    private var grayView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = self.view.frame
        // 全体を覆うview
        grayView = self.addViewTo(view: self.view, frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height), color: UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.8))

        // 独立したview
        _ = self.addViewTo(view: grayView, frame: CGRect(x: 100, y: 100, width: 100, height: 100), color: UIColor.red)
        _ = self.addViewTo(view: grayView, frame: CGRect(x: 200, y: 150, width: 50, height: 150), color: UIColor.green)

        // 重なってるview
        let brownView = self.addViewTo(view: grayView, frame: CGRect(x: 50, y: 180, width: 80, height: 80), color: UIColor.brown)
        let yellowView = self.addViewTo(view: brownView, frame: CGRect(x: 10, y: 10, width: 60, height: 60), color: UIColor.yellow)
        _ = self.addViewTo(view: yellowView, frame: CGRect(x: 10, y: 10, width: 40, height: 40), color: UIColor.purple)

        let button = UIButton(frame: CGRect(x: frame.width / 2 - 100, y: frame.height - 100, width: 200, height: 50))
        button.setTitle("remove gray view", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.blue
        button.addTarget(self, action: #selector(MultiHierarchyViewController.tappedButton), for: .touchUpInside)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @objc private func tappedButton() {
        grayView.removeFromSuperview()
    }

    private func addViewTo(view: UIView, frame: CGRect, color: UIColor) -> UIView {
        let v = UIView(frame: frame)
        v.backgroundColor = color
        view.addSubview(v)
        return v
    }
}
