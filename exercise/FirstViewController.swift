//
//  FirstViewController.swift
//  exercise
//
//  Created by yclxiao on 2018/6/20.
//  Copyright © 2018年 yclxiao. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var pwd: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginBtn.addTarget(self, action: #selector(clickLogin(sender:)), for: UIControlEvents.touchUpInside)
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func clickLogin(sender:UIButton) -> Void {
        print("跳转")
        
        let listController = ListViewController(nibName: "ListViewController", bundle: nil)
        self.navigationController?.pushViewController(listController, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
