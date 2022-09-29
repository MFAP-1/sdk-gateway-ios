import Foundation

class LoadingView : UIView {
    @IBOutlet weak var loadingLabel : UILabel!
    @IBOutlet weak var cardView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder : NSCoder) {
        super.init(coder: coder)
    }
    
    private func commonInit(){
       
        let bundle = Bundle.init(for: LoadingView.self)
        if let viewToAdd = bundle.loadNibNamed("LoadingView", owner: self), let contentView = viewToAdd.first as? UIView {
            //Add shadowView
            cardView?.dropShadow()
            
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }
}
