//
//  ZBHomeViewController.swift
//  SinaWeibo02
//
//  Created by Macx on 16/4/13.
//  Copyright © 2016年 Macx. All rights reserved.
//

import UIKit

class ZBHomeViewController: ZBBaseViewController {

    //属性记录titlebutton的点击
//    var titleButtonSelected:Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigationBar()
     
        
        
    }
    
    
    
   //MAKR:设置导航栏
    private func setUpNavigationBar(){
        
      navigationItem.leftBarButtonItem = UIBarButtonItem(image:UIImage(named: "navigationbar_friendsearch"), style: UIBarButtonItemStyle.Plain, target: self, action: "personButtonClicked")
        
     navigationItem.rightBarButtonItem = UIBarButtonItem(image:UIImage(named: "navigationbar_pop"), style: UIBarButtonItemStyle.Plain, target: self, action: "CQRbuttonClicked")
      
      navigationItem.titleView=titleBtn
        
    
    }
    
    //中间按钮
    
    
  //UIBarButton点击的监听
    
    @objc private func personButtonClicked(){
      print("personButtonClicked")
    
    }
    
    @objc private func CQRbuttonClicked(){
        print("CQRbuttonClicked")
        
    }
    
    @objc private func titleButtonClicked(){
        titleBtn.selected = !titleBtn.selected
        
        print("titleButtonClicked")
        if titleBtn.selected {
         titleBtn.imageView?.transform=CGAffineTransformMakeRotation(CGFloat(M_PI))
        }
        else{
         titleBtn.imageView?.transform=CGAffineTransformIdentity
        
        }
        
        
    }
    
    
    //懒加载子控件
    
    private lazy var titleBtn:ZBHomeButton={
       let button=ZBHomeButton(imageName: "navigationbar_arrow_down", title: "哈哈哈")
          button.addTarget(self, action: "titleButtonClicked", forControlEvents: UIControlEvents.TouchUpInside)
        
        return button
    }()
    

}
