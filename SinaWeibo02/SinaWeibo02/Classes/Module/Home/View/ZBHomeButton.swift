//
//  ZBHomeButton.swift
//  SinaWeibo02
//
//  Created by Macx on 16/4/16.
//  Copyright © 2016年 Macx. All rights reserved.
//

import UIKit

class ZBHomeButton: UIButton {
    
    init(imageName:String,title:String){
        //     super.init(frame)
        super.init(frame: CGRectZero)
        //        self.imageView?.image=
        setImage(UIImage(named: imageName), forState: UIControlState.Normal)
        
        //        titleLabel?.text=title
        setTitle(title, forState: UIControlState.Normal)
        setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        self.sizeToFit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        titleLabel?.frame.origin.x=0
        imageView?.frame.origin.x = (titleLabel!.frame.size.width + 3)
        
        
        
    }
    
}
