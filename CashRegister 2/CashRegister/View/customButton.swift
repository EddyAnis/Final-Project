
import UIKit

class customButton: UIButton {

   
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        layer.cornerRadius = layer.frame.height/5
    }

}
