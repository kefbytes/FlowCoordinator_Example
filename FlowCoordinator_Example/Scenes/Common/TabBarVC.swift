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
        guard let dashboardVM = tabBarVM?.dashboardVM,
            let ordersVM = tabBarVM?.ordersVM,
            let scanVM = tabBarVM?.scanVM,
            let inventoryVM = tabBarVM?.inventoryVM,
            let shipmentsVM = tabBarVM?.shipmentsVM else {
            return
        }

        // Tab 1
        let dashboardVC = ViewControllerFactory.makeDashboardVC(viewModel: dashboardVM)
        dashboardVC.title = "Dashboard"
        dashboardVC.tabBarItem = UITabBarItem.init(title: "Dashboard", image: UIImage(named: "Dashboard"), tag: 0)

        // Tab 2
        let ordersVC = ViewControllerFactory.makeOrdersVC(viewModel: ordersVM)
        ordersVC.title = "Orders"
        ordersVC.tabBarItem = UITabBarItem.init(title: "Orders", image: UIImage(named: "Orders"), tag: 1)

        // Tab 3
        let scanVC = ViewControllerFactory.makeScanVC(viewModel: scanVM)
        scanVC.title = "Scan"
        scanVC.tabBarItem = UITabBarItem.init(title: "Scan", image: UIImage(named: "Scan"), tag: 2)

        // Tab 4
        let inventoryVC = ViewControllerFactory.makeInventoryVC(viewModel: inventoryVM)
        inventoryVC.title = "Inventory"
        inventoryVC.tabBarItem = UITabBarItem.init(title: "Inventory", image: UIImage(named: "Inventory"), tag: 3)

        // Tab 5
        let shipmentsVC = ViewControllerFactory.makeShipmentsVC(viewModel: shipmentsVM)
        shipmentsVC.title = "Shipments"
        shipmentsVC.tabBarItem = UITabBarItem.init(title: "Shipments", image: UIImage(named: "Shipments"), tag: 3)

        let controllerArray = [dashboardVC, ordersVC, scanVC, inventoryVC, shipmentsVC]
        tabBarCnt.viewControllers = controllerArray.map{ UINavigationController.init(rootViewController: $0)}

        self.view.addSubview(tabBarCnt.view)
    }

}
