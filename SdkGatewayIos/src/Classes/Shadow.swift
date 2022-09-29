import Foundation
import UIKit

extension UIView {
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.15
        layer.shadowOffset = .zero
        layer.shadowRadius = 3.84
        layer.shouldRasterize = true
        layer.shadowOffset.width = 0
        layer.shadowOffset.height = 2
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
