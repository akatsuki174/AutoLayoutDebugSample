import UIKit

extension UIView {
    /// 曖昧なレイアウトをサブビューまで調べるメソッド
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

    /// 曖昧な制約を持つviewに対して、制約を満たす範囲で
    /// ランダムに足りない制約を補うメソッド
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
