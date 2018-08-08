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
}
