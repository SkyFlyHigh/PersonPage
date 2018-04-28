//
//  HomePageViewController.swift
//  PersonPages
//
//  Created by 余鹏 on 2018/4/27.
//  Copyright © 2018年 com.doudou. All rights reserved.
//

import UIKit
import SnapKit

class HomePageViewController: CommonViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.red
        
        self.configNavigationBar()
    }

    // 添加搜索框和编辑按钮
    private func configNavigationBar() {
        // 搜索框
        let searchBar = UISearchBar.init()
        let superView = self.navigationController!.navigationBar
        searchBar.placeholder = "搜索"
        
        superView.addSubview(searchBar)
        searchBar.snp.makeConstraints { (make) in
            make.width.equalTo(UIScreen.main.bounds.size.width - 15 - 60)
            make.height.equalTo(22)
            make.centerY.equalTo(superView)
            make.left.equalTo(superView).offset(15)
            make.right.equalTo(superView).offset(-60)
        }
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .edit, target: self, action: #selector(editClicked))
        
    }
    
    @objc func editClicked() {
        
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
