//
//  TabBarViewController.swift
//  PersonPages
//
//  Created by 余鹏 on 2018/4/27.
//  Copyright © 2018年 com.doudou. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.configViewControllers()
    }

    func configViewControllers() {
        // HomePage
        let homePageVC = HomePageViewController(nibName: "HomePageViewController", bundle: nil)
        let homePageNaviVC = CommonNavigationController.init(rootViewController: homePageVC)
        homePageNaviVC.tabBarItem = UITabBarItem.init(title: "首页", image: UIImage.init(named: ""), selectedImage: UIImage.init(named: ""))
        
        // Near
        let nearVC = NearViewController(nibName: "NearViewController", bundle: nil)
        let nearNaviVC = CommonNavigationController.init(rootViewController: nearVC)
        nearNaviVC.tabBarItem = UITabBarItem.init(title: "附近", image: UIImage.init(named: ""), selectedImage: UIImage.init(named: ""))
        // Notice
        let noticeVC = NoticeViewController(nibName: "NoticeViewController", bundle: nil)
        let noticeNaviVC = CommonNavigationController.init(rootViewController: noticeVC)
        noticeNaviVC.tabBarItem = UITabBarItem.init(title: "通知", image: UIImage.init(named: ""), selectedImage: UIImage.init(named: ""))
        // Mine
        let mineVC = MineViewController(nibName: "MineViewController", bundle: nil)
        let mineNaviVC = CommonNavigationController.init(rootViewController: mineVC)
        mineNaviVC.tabBarItem = UITabBarItem.init(title: "我的", image: UIImage.init(named: ""), selectedImage: UIImage.init(named: ""))
        
        self.viewControllers = [homePageNaviVC, nearNaviVC, noticeNaviVC, mineNaviVC]
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
