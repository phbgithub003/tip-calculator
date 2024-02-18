//
//  ThemeFont.swift
//  Tip-calculator
//
//  Created by Harshit Bhargava  on 17/02/24.
//

import UIKit

struct ThemeFont {
    static func regular(ofsize size: CGFloat)->UIFont{
        return  UIFont(name: "AvenirNext-Regular", size: size) ?? .systemFont(ofSize: size)
    }
    
    static func bold(ofsize size: CGFloat)->UIFont{
        return  UIFont(name: "AvenirNext-Bold", size: size) ?? .systemFont(ofSize: size)
    }
    
    static func demibold(ofsize size: CGFloat)->UIFont{
        return  UIFont(name: "AvenirNext-DemiBold", size: size) ?? .systemFont(ofSize: size)
    }
}
