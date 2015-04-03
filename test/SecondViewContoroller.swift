//
//  SecondViewContoroller.swift
//  test
//
//  Created by 坂野健 on 2015/04/01.
//  Copyright (c) 2015年 坂野健. All rights reserved.
//

import UIKit
class SecondViewContoroller: UIViewController {
    let myButtonBefore: UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.whiteColor();
        myButtonBefore.frame=CGRectMake(0, 0, 200, 50)
        myButtonBefore.backgroundColor = UIColor.redColor();
        myButtonBefore.layer.masksToBounds = true
        myButtonBefore.setTitle("Before", forState: .Normal)
        myButtonBefore.layer.cornerRadius = 20.0
        myButtonBefore.layer.position = CGPoint(x: 100 , y:50)
        myButtonBefore.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(myButtonBefore);
        
    }
    
    //
    // ボタンイベント
    //
    func onClickMyButton(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}