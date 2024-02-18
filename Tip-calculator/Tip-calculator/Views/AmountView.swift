//
//  AmountView.swift
//  Tip-calculator
//
//  Created by Harshit Bhargava  on 18/02/24.
//

import Foundation
import UIKit


class AmountView: UIView {
    let text:String
    let amt:String
    let alignment : NSTextAlignment
    
    
    init(text:String, amt:String, align: NSTextAlignment ){
        self.text = text
        self.amt = amt
        self.alignment = align
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var headerLabel: UILabel = {
        let label = LabelFactory.build(text: text, font: ThemeFont.regular(ofsize: 18))
        label.textAlignment = alignment
        return label
    }()
    
    private lazy var secondLabel:UILabel = {
        let text = NSMutableAttributedString(string: "$000",
                                             attributes: [.font: ThemeFont.bold(ofsize: 24)])
        text.addAttributes([.font:ThemeFont.bold(ofsize: 16)], range: NSRange(location: 0, length: 1))
        let label = UILabel()
        label.textColor = UIColor(named: "primary")
        label.textAlignment = .center
        label.attributedText = text
        label.textAlignment = alignment
        return label
        
    }()
    
    private lazy var vStack: UIStackView = {
        let view = UIStackView(arrangedSubviews: [
            headerLabel,
            secondLabel
        ])
        view.axis = .vertical
        return view
    }()
    
    func layout() {
        addSubview(vStack)
        vStack.snp.makeConstraints{ make in
            make.edges.equalToSuperview()
        }
    }
}



