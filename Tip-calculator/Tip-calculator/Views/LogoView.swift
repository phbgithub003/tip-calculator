//
//  LogoView.swift
//  Tip-calculator
//
//  Created by Harshit Bhargava  on 17/02/24.
//

import UIKit
import SnapKit
class LogoView: UIView {
    private let imageView : UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "icCalculatorBW"))
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let firstLabel: UILabel = {
        let label = UILabel()
        let text = NSMutableAttributedString(string: "Mr Tip",
                                             attributes: [.font: ThemeFont.demibold(ofsize: 16)])
        text.addAttributes([.font: ThemeFont.bold(ofsize: 24)], range: NSRange(location: 3, length: 3))
        label.attributedText = text
        return label
    }()

    private let secondLabel: UILabel = {
        return LabelFactory.build(text: "Calculator", font: ThemeFont.demibold(ofsize: 20), textAlignment: .left)
    }()
    
    private lazy var hStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            imageView,
            labelStackView
        ])
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.alignment = .center
        return stackView
    }()
    
    private lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            firstLabel,
            secondLabel
        ])
        stackView.axis = .vertical
        stackView.spacing = -4
        return stackView
    }()
    
    init(){
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout(){
        addSubview(hStackView)
        hStackView.snp.makeConstraints{ make in
            make.top.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        imageView.snp.makeConstraints{ make in
            make.height.equalTo(imageView.snp.width)
        }
    }
    
    
}








