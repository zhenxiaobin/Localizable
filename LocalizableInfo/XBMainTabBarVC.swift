//
//  XBMainTabBarVC.swift
//  LocalizableInfo
//
//  Created by 甄晓彬 on 2017/9/30.
//  Copyright © 2017年 甄晓彬. All rights reserved.
//

import UIKit

class XBMainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let nav1 = UINavigationController(rootViewController: XBHomePageVC())
        nav1.tabBarItem = createItemBar(title: "首页", image: getImage("TabBar1"), selectedImage: getImage("TabBarSel1"))
        
        let nav2 = UINavigationController(rootViewController: XBMyInfoVC())
        nav2.tabBarItem = createItemBar(title: "我的", image: getImage("TabBar2"), selectedImage: getImage("TabBarSel2"))
        self.setViewControllers([nav1, nav2], animated: true)
    }
    
    private func createItemBar(title: String, image: UIImage, selectedImage: UIImage) -> UITabBarItem {
        let item = UITabBarItem(title: title, image: image, selectedImage: selectedImage)
        self.tabBar.tintColor = UIColor.red
        return item
    }
    
    func getImage(_ ImgName: NSString)->UIImage{
        var image:UIImage = UIImage(named: ImgName as String)!
        image = image.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        return image;
    }

}
