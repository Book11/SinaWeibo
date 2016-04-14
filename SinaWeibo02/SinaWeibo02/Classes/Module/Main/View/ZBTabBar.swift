//
//  ZBTabBar.swift
//  SinaWeibo02
//
//  Created by Macx on 16/4/13.
//  Copyright © 2016年 Macx. All rights reserved.
//

import UIKit
let NumbersOfItem=5


class ZBTabBar: UITabBar {

 
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        let height=self.bounds.height
        let width = UIScreen.mainScreen().bounds.width/CGFloat(NumbersOfItem)
        composeBtn.frame=CGRect(x: width*2, y: 0, width: width, height: height)
        
        var index=0
        for subView in subviews{
            if subView.isKindOfClass(NSClassFromString("UITabBarButton")!){
      
             subView.frame=CGRect(x:width*CGFloat(index), y: 0, width: width, height: height)
                
                index += index==1 ? 2:1
            }
        
      }
        
        
        
    }
    
    
    @objc private func composeBtnClicked(){
      print("加号按钮被点击")
    
    }
    
    
    private lazy var composeBtn:UIButton={
        
        let button=UIButton()
        button.setBackgroundImage(UIImage(named:"tabbar_compose_button_highlighted"), forState: UIControlState.Highlighted)
        button.setBackgroundImage(UIImage(named:"tabbar_compose_button"), forState: UIControlState.Normal)
        button.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), forState: UIControlState.Highlighted)
        button.setImage(UIImage(named: "tabbar_compose_icon_add"), forState: UIControlState.Normal)
        button.addTarget(self, action: "composeBtnClicked", forControlEvents: UIControlEvents.TouchUpInside)
        self.addSubview(button)
        
        return button
    }()

}
