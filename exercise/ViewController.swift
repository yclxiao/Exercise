//
//  ViewController.swift
//  exercise
//
//  Created by yclxiao on 2018/6/15.
//  Copyright © 2018年 yclxiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var pwd: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        logo.image = UIImage(named: "loginLogo")
        
        loginBtn.addTarget(self, action: #selector(clickLogin(sender:)), for: UIControlEvents.touchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func clickLogin(sender:UIButton) -> Void {
        let nameStr = name.text
        let pwdStr = pwd.text
        
        guard (nameStr != nil) && (pwdStr != nil) else {
            return
        }
        
        if nameStr == "aaa" && pwdStr == "bbb" {
            //跳转
            let listController = ListViewController(nibName: "ListViewController", bundle: nil)
            self.present(listController, animated: true, completion: nil)
            
        } else {
            print("密码错误")
        }
    }


}

