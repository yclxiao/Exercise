//
//  ListViewController.swift
//  exercise
//
//  Created by yclxiao on 2018/6/18.
//  Copyright © 2018年 yclxiao. All rights reserved.
//

import UIKit

class ListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var listView: UITableView!
    
    //MARK: - 懒加载数据
    lazy var listData:[String] = {
        return ["iOScoder","iOS小菜鸡","终成雄鹰","旅途很远","还需修行",
                "iOScoder","iOS小菜鸡","终成雄鹰","旅途很远","还需修行",
                "iOScoder","iOS小菜鸡","终成雄鹰","旅途很远","还需修行",
                "iOScoder","iOS小菜鸡","终成雄鹰","旅途很远","还需修行",
                "iOScoder","iOS小菜鸡","终成雄鹰","旅途很远","还需修行",
                "iOScoder","iOS小菜鸡","终成雄鹰","旅途很远","还需修行",
                "iOScoder","iOS小菜鸡","终成雄鹰","旅途很远","还需修行",
                "iOScoder","iOS小菜鸡","终成雄鹰","旅途很远","还需修行",
                "iOScoder","iOS小菜鸡","终成雄鹰","旅途很远","还需修行",
                "iOScoder","iOS小菜鸡","终成雄鹰","旅途很远","还需修行"]
    }()
    
//    var datasource:[Int]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listView.delegate = self
        listView.dataSource = self
        
        
//        for i in [0...99] {
//            datasource.add(i)
//        }
        
        
//        listView.register(UINib(nibName: "FirstCell", bundle: nil), forCellReuseIdentifier: "first")
//        listView.register(UINib(nibName: "SecondCell", bundle: nil), forCellReuseIdentifier: "second")
        
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
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
//        if cell == nil{
//            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
//        }
//        cell?.textLabel?.text = listData[indexPath.row]
//
//        return cell!
        
        //此处可使用两种方式注册自定义的tableviewcell，第一种在register注册cell，第二种方式在这里创建cell
        
        var cell:UITableViewCell?
        
        if indexPath.row % 2 == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: "first")
            if cell == nil {
                cell = Bundle.main.loadNibNamed("FirstCell", owner: nil, options: nil)?.last as? FirstCell
            }
            
            (cell as? FirstCell)?.first.text = listData[indexPath.row]
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "second")
            if cell == nil {
                cell = Bundle.main.loadNibNamed("SecondCell", owner: nil, options: nil)?.last as? SecondCell
            }
            
            (cell as? SecondCell)?.second.text = listData[indexPath.row]
        }
        
        return cell!
    }

}
