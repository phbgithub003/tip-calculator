//
//  ResultView.swift
//  Tip-calculator
//
//  Created by Harshit Bhargava  on 17/02/24.
//

import UIKit


class ResultView: UIView {
    
    private var headerLabel :UILabel = {
        LabelFactory.build(text: "Total p/person", font: ThemeFont.demibold(ofsize: 16))
    }()
    
    private var perPersonBillValueLabel: UILabel = {
        let text = NSMutableAttributedString(string: "$000",
                                             attributes: [.font: ThemeFont.bold(ofsize: 48)])
        text.addAttributes([.font:ThemeFont.bold(ofsize: 24)], range: NSRange(location: 0, length: 1))
        let label = UILabel()
        label.textAlignment = .center
        label.attributedText = text
        return label
    }()
    
    private let horzontalLineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "separator")
        return view
    }()
    
    private lazy var hStackView: UIStackView = {
        let hView = UIStackView(arrangedSubviews: [
            AmountView(text: "Total bill", amt: "$000", align: .left),
            UIView(),
            AmountView(text: "Total tip", amt: "$000", align: .right)
        ])
        hView.axis = .horizontal
        hView.distribution = .fillEqually
        return hView
    }()
    
    private lazy var vStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            headerLabel,
            perPersonBillValueLabel,
            horzontalLineView,
            hStackView
        ])
        stackView.spacing = 8
        stackView.axis = .vertical
        return stackView
    }()
    
    
    init(){
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout(){
        backgroundColor = .white
        addSubview(vStackView)
        vStackView.snp.makeConstraints{ make in
            make.top.equalTo(snp.top).offset(24)
            make.bottom.equalTo(snp.bottom).offset(-24)
            make.leading.equalTo(snp.leading).offset(24)
            make.trailing.equalTo(snp.trailing).offset(-24)
        }
        horzontalLineView.snp.makeConstraints{ make in
            make.height.equalTo(2)
            
        }
        
        addShadow(
            offset: CGSize(width: 0, height: 3),
            color: .black,
            radius: 12.0,
            opacity: 0.1)
    }

}
