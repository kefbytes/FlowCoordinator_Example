//
//  TabBarVC.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import UIKit

class TabBarVC: UIViewController {

    var tabBarVM: TabBarVMProtocol?
    let tabBarCnt = UITabBarController()

    init(viewModel: TabBarVMProtocol) {
        self.tabBarVM = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        createTabBarController()
    }

    func createTabBarController() {
        guard let dashboardVM = tabBarVM?.dashboardVM, let ordersVM = tabBarVM?.ordersVM else {
            return
        }
        let dashboardVC = ViewControllerFactory.makeDashboardVC(viewModel: dashboardVM)
        dashboardVC.title = "Dashboard"
        dashboardVC.tabBarItem = UITabBarItem.init(title: "Dashboard", image: UIImage(named: "Dashboard"), tag: 0)

        let ordersVC = ViewControllerFactory.makeOrderslVC(viewModel: ordersVM)
        ordersVC.title = "Orders"
        ordersVC.tabBarItem = UITabBarItem.init(title: "Orders", image: UIImage(named: "Orders"), tag: 1)

        let controllerArray = [dashboardVC, ordersVC]
        tabBarCnt.viewControllers = controllerArray.map{ UINavigationController.init(rootViewController: $0)}

        self.view.addSubview(tabBarCnt.view)
    }

}
