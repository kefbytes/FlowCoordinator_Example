//
//  TabBarVM.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation

protocol TabBarVMProtocol {
    var appCoordinator: AppCoordinator? { get }
    var dashboardVM: DashboardVMProtocol { get }
    var ordersVM: OrdersVMProtocol { get }
    var scanVM: ScanVMProtocol { get }
}

struct TabBarVM: TabBarVMProtocol {
    var appCoordinator: AppCoordinator?
    var dashboardVM: DashboardVMProtocol
    var ordersVM: OrdersVMProtocol
    var scanVM: ScanVMProtocol

    init(coordinator: AppCoordinator) {
        self.appCoordinator = coordinator
        dashboardVM = ViewModelFactory.makeDashboardVM(appCoordinator: coordinator)
        ordersVM = ViewModelFactory.makeOrdersVM(appCoordinator: coordinator)
        scanVM = ViewModelFactory.makeScanVM(appCoordinator: coordinator)
    }
}
