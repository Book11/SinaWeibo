//
//  ZBTabBarController.swift
//  SinaWeibo02
//
//  Created by Macx on 16/4/13.
//  Copyright © 2016年 Macx. All rights reserved.
//

import UIKit

class ZBTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        setUpTabBarItems()
        
        let mainTabBar=ZBTabBar()
        self.setValue(mainTabBar, forKey: "tabBar")
        
        
    }
    
    private func setUpTabBarItems(){
        
        setTabBarItems(ZBHomeViewController(), title: "首页", imageName: "tabbar_home")
        setTabBarItems(ZBDiscoverViewController(), title: "消息", imageName: "tabbar_message_center")
        
        setTabBarItems(ZBDiscoverViewController(), title: "发现", imageName: "tabbar_discover")
        setTabBarItems(ZBProfileViewController(), title: "我", imageName: "tabbar_profile")
        
        
    }
    
    
    
    private func setTabBarItems(childVc:UIViewController,title:String,imageName:String){
        
        
        //        let childVc=ZBHomeViewController()
        childVc.title=title
        childVc.tabBarItem.image=UIImage(named:imageName)
        childVc.tabBarItem.selectedImage=UIImage(named:imageName+"_selected")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        childVc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orangeColor()], forState: UIControlState.Selected)
//        let navc=UINavigationBar()
        addChildViewController(UINavigationController(rootViewController:childVc))
        
    }
    
    
    
}
