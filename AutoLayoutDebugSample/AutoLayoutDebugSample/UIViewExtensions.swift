import UIKit

extension UIView {
    func hasAmbiguity() -> Bool {
        var hasAmbiguity = false

        #if DEBUG
        if self.hasAmbiguousLayout {
            print("description: \(self.description)")
            hasAmbiguity = true
        }

        for view in self.subviews {
            if view.hasAmbiguity() {
                hasAmbiguity = true
            }
        }
        #endif
        return hasAmbiguity
    }

    func exerciseAmbiguityInLayoutRepeatedly(recursive: Bool) {
        #if DEBUG
        if self.hasAmbiguousLayout {
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(UIView.exerciseAmbiguityInLayout), userInfo: nil, repeats: true)
        }

        if recursive {
            for view in subviews {
                view.exerciseAmbiguityInLayoutRepeatedly(recursive: recursive)
            }
        }
        #endif
    }
}
