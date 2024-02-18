//
//  LabelFactory.swift
//  Tip-calculator
//
//  Created by Harshit Bhargava  on 18/02/24.
//

import UIKit

struct LabelFactory {
  
  static func build(
    text: String?,
    font: UIFont,
    backgroundColor: UIColor = .clear,
    textColor: UIColor = UIColor(named: "text")!,
    textAlignment: NSTextAlignment = .center) -> UILabel {
      let label = UILabel()
      label.text = text
      label.font = font
      label.backgroundColor = backgroundColor
      label.textColor = textColor
      label.textAlignment = textAlignment
      return label
    }
}
