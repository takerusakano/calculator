//
//  ViewController.swift
//  test
//
//  Created by 坂野健 on 2015/04/01.
//  Copyright (c) 2015年 坂野健. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet
    weak var myCommand:UILabel!;
    @IBOutlet
    weak var myLabel:UILabel!;
    @IBOutlet
    weak var myButton0:UIButton!;
    @IBOutlet
    weak var myButton1:UIButton!;
    @IBOutlet
    weak var myButton2:UIButton!;
    @IBOutlet
    weak var myButton3:UIButton!;
    @IBOutlet
    weak var myButton4:UIButton!;
    @IBOutlet
    weak var myButton5:UIButton!;
    @IBOutlet
    weak var myButton6:UIButton!;
    @IBOutlet
    weak var myButton7:UIButton!;
    @IBOutlet
    weak var myButton8:UIButton!;
    @IBOutlet
    weak var myButton9:UIButton!;
    @IBOutlet
    weak var myButtonPlus:UIButton!;
    @IBOutlet
    weak var myButtonMinus:UIButton!;
    @IBOutlet
    weak var myButtonMulti:UIButton!;
    @IBOutlet
    weak var myButtonDvision:UIButton!;
    @IBOutlet
    weak var myButtonEqual:UIButton!;
    @IBOutlet
    weak var myButtonClear:UIButton!;
    @IBOutlet
    weak var myButtonAllClear:UIButton!;
    @IBOutlet
    weak var myButtonMc:UIButton!;
    @IBOutlet
    weak var myButtonMp:UIButton!;
    @IBOutlet
    weak var myButtonMm:UIButton!;
    @IBOutlet
    weak var myButtonMr:UIButton!;
    @IBOutlet
    weak var myButtonNext:UIButton!;
    
    var left:String="";
    var right:String="";
    var inputR:Bool=false;
    var command:String=" ";
    
    var result:Int?;
    var mResult:Int=0;


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myButton0.addTarget(self, action: "buttonClicked:", forControlEvents:.TouchUpInside);
        myButton1.addTarget(self, action: "buttonClicked:", forControlEvents:.TouchUpInside);
        myButton2.addTarget(self, action: "buttonClicked:", forControlEvents:.TouchUpInside);
        myButton3.addTarget(self, action: "buttonClicked:", forControlEvents:.TouchUpInside);
        myButton4.addTarget(self, action: "buttonClicked:", forControlEvents:.TouchUpInside);
        myButton5.addTarget(self, action: "buttonClicked:", forControlEvents:.TouchUpInside);
        myButton6.addTarget(self, action: "buttonClicked:", forControlEvents:.TouchUpInside);
        myButton7.addTarget(self, action: "buttonClicked:", forControlEvents:.TouchUpInside);
        myButton8.addTarget(self, action: "buttonClicked:", forControlEvents:.TouchUpInside);
        myButton9.addTarget(self, action: "buttonClicked:", forControlEvents:.TouchUpInside);
        myButtonDvision.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
        myButtonMinus.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
        myButtonMulti.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
        myButtonPlus.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
        myButtonEqual.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
        myButtonClear.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
        myButtonAllClear.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
        myButtonMc.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
        myButtonMp.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
        myButtonMm.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
        myButtonMr.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
        myButtonNext.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func buttonClicked(sender:UIButton){
        switch sender{
        case myButtonPlus,myButtonMulti,myButtonMinus,myButtonDvision:
        myCommand.text=sender.titleLabel!.text!;
        command=sender.titleLabel!.text!;
        inputR=true;
        break;
        case myButtonEqual:
            if (right != ""){
                switch command{
                    case "+":
                        if result==nil{
                        result=left.toInt()!+right.toInt()!;
                        }else{
                            result!+=right.toInt()!;
                        }
                        break;
                    case "-":
                        if result==nil{
                        result=left.toInt()!-right.toInt()!;
                        }else{
                            result!-=right.toInt()!;
                        }
                        break;
                    case "*":
                        if result==nil{
                        result=left.toInt()!*right.toInt()!;
                        }else{
                            result!*=right.toInt()!;
                        }
                        break;
                    case "/":
                        if result==nil{
                        result=left.toInt()!/right.toInt()!;
                        }else{
                            result!/=right.toInt()!;
                        }
                        break;
                default :
                    result=0;
                    break;
                }
                myLabel.text="\(result!)";
                myCommand.text="";
                left="";
                right="";
                inputR=false;
            }
            break;
        case myButtonClear:
            myLabel.text="";
            right="";
            break;
        case myButtonAllClear:
            myCommand.text="";
            myLabel.text="";
            result=0;
            left="";
            right="";
            inputR=false;
            break;
        case myButtonMm:
            if(result != nil){
            mResult-=result!;
            }else{
                mResult-=left.toInt()!;
            }
            break;
        case myButtonMc :
            mResult=0;
            break;
        case myButtonMp :
            if(result != nil){
            mResult+=result!;
            }else{
                mResult+=left.toInt()!;
            }
            break;
        case myButtonMr:
            myLabel.text="\(mResult)";
            break;
        case myButtonNext:
            let mySecondViewController: UIViewController = SecondViewContoroller();
            // Viewの移動する.
            self.presentViewController(mySecondViewController, animated: true, completion: nil)
            break;
        default:
            if inputR{
                right+=sender.titleLabel!.text!;
                myLabel.text=right;
            }else{
                result=nil;
                left+=sender.titleLabel!.text!;
                myLabel.text=left;
            }
            break;
        }
    }


}

