//
//  BasicLabel.swift
//  BelizeBus
//
//  Created by 辛忠翰 on 2018/7/25.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

import UIKit

public class BasicLabel: UILabel {
    
    public var textInsets = UIEdgeInsets.zero {
        didSet { invalidateIntrinsicContentSize() }
    }
    
    public func setupInset(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) {
        textInsets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
    }
    
    
    override public func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        
        let insetRect = bounds.inset(by: textInsets)
        let textRect = super.textRect(forBounds: insetRect, limitedToNumberOfLines: numberOfLines)
        let invertedInsets = UIEdgeInsets(top: -textInsets.top,
                                          left: -textInsets.left,
                                          bottom: -textInsets.bottom,
                                          right: -textInsets.right)
        return textRect.inset(by: invertedInsets)
    }
    
    override public func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: textInsets))
    }
}
