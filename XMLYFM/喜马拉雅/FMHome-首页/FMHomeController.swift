//
//  FMHomeController.swift
//  YYSwiftProject
//
//  Created by Domo on 2018/7/24.
//  Copyright © 2018年 知言网络. All rights reserved.
//

import UIKit
import DNSPageView
class FMHomeController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // 创建DNSPageStyle，设置样式
        let style = DNSPageStyle()
        style.isTitleScrollEnable = false
        style.isScaleEnable = true
        style.isShowBottomLine = true
        style.titleSelectedColor = UIColor.black
        style.titleColor = UIColor.gray
        style.bottomLineColor = DominantColor
        style.bottomLineHeight = 2
    
        
        let titles = ["推荐","分类","VIP","直播","广播"]
        let viewControllers:[UIViewController] = [HomeRecommendController(),HomeClassifyController(),HomeVIPController(),HomeLiveController(),HomeBroadcastController()]
        let pageView = DNSPageView(frame: CGRect(x: 0, y: 64, width: YYScreenWidth, height: YYScreenHeigth-64-44), style: style, titles: titles, childViewControllers: viewControllers)
        view.addSubview(pageView)
    }
}
