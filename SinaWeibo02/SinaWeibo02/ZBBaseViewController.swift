//
//  ZBBaseViewController.swift
//  SinaWeibo02
//
//  Created by Macx on 16/4/13.
//  Copyright © 2016年 Macx. All rights reserved.
//

import UIKit

class ZBBaseViewController: UITableViewController {
    var userLogin:Bool=false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view=ZBVisitorView()
        
    }
    
    
}
