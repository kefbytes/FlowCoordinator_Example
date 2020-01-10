//
//  AppCoordinator.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: BaseCoordinator {

    private let engine: NavigationEngineProtocol

    init(navigationEngine: NavigationEngineProtocol) {
        engine = navigationEngine
        super.init()
    }

    // root view
    override func start() {
        let loginCoordinator = CoordinatorFactory.makeLoginCoordinator(navigationEngine: engine)
        loginCoordinator.start()
    }

    func presentTabBar() {
        let tabBarCoordinator = CoordinatorFactory.makeTabBarCoordinator(navigationEngine: engine)
        tabBarCoordinator.start()
    }

    func presentDashboard() {
        let dashboardCoordinator = CoordinatorFactory.makeDashboardCoordinator(navigationEngine: engine)
        dashboardCoordinator.start()
    }

    func presentOrderDetails() {
        let ordersCoordinator = CoordinatorFactory.makeOrdersCoordinator(navigationEngine: engine)
        ordersCoordinator.displayOrderDetails()
    }

    func scanComplete() {
        let scanCoordinator = CoordinatorFactory.makeScanCoordinator(navigationEngine: engine)
        scanCoordinator.scanComplete()
    }
}
