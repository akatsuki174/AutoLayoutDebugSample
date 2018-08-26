import UIKit

extension UIView {
    /// 曖昧なレイアウトをサブビューまで調べるメソッド
    func hasAmbiguity() -> Bool {
        var hasAmbiguity = false

        #if DEBUG
        if self.hasAmbiguousLayout {
            print("description:::::::::::::: \(self.description)")
            hasAmbiguity = true
        }

        // サブビューまで再帰的に調べる
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

    /// ある2つのviewに関わる制約だけ取得したい時に使うメソッド
    /// ある程度あたりが付いている時に使うと良い
    /// 現在のビューコンポーネントの中でview（引数）を対象にしている制約だけ出力する
    func outputConstraintsReferringView(view: UIView) {
        constraints.forEach { constraint in
            if constraint.firstItem as? UIView == view || constraint.secondItem as? UIView == view {
                print(constraint)
            }
        }
    }
}
