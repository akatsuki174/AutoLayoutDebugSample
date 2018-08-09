import UIKit

final class CoverView: UIView {
    private let messageLabel = UILabel()

    init() {
        super.init(frame: CGRect.zero)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }

    func show(in view: UIView) {
        // Cover view layout
        view.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        self.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        self.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        self.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.75)
        self.alpha = 0.0

        // messageLabel layout
        addSubview(messageLabel)
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.font = UIFont.systemFont(ofSize: 36)
        messageLabel.textColor = UIColor.white
        messageLabel.textAlignment = .center
        messageLabel.numberOfLines = 0
        messageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        messageLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        messageLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        messageLabel.heightAnchor.constraint(equalToConstant: 120).isActive = true
        messageLabel.text = "シャイニング\nマンデぇぇぇぇ"

        UIView.animate(withDuration: 0.8, animations: { [weak self] in
            self?.alpha = 1.0
        })
    }
}
