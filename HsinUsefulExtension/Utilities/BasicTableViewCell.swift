//
//  BasicTableViewCell.swift
//  BelizeBus
//
//  Created by 辛忠翰 on 2018/7/25.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

import UIKit

public class BasicTableViewCell: UITableViewCell {
    public func setupViews(){
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}

