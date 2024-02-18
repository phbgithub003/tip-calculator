//
//  ResultView.swift
//  Tip-calculator
//
//  Created by Harshit Bhargava  on 17/02/24.
//

import UIKit


class ResultView: UIView {

    init(){
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout(){
        self.backgroundColor = .gray
    }

}
