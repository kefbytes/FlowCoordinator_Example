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
    var inventoryVM: InventoryVMProtocol { get }
    var shipmentsVM: ShipmentsVMProtocol { get }
}

struct TabBarVM: TabBarVMProtocol {
    var appCoordinator: AppCoordinator?
    var dashboardVM: DashboardVMProtocol
    var ordersVM: OrdersVMProtocol
    var scanVM: ScanVMProtocol
    var inventoryVM: InventoryVMProtocol
    var shipmentsVM: ShipmentsVMProtocol

    init(coordinator: AppCoordinator) {
        self.appCoordinator = coordinator
        dashboardVM = ViewModelFactory.makeDashboardVM(appCoordinator: coordinator)
        ordersVM = ViewModelFactory.makeOrdersVM(appCoordinator: coordinator)
        scanVM = ViewModelFactory.makeScanVM(appCoordinator: coordinator)
        inventoryVM = ViewModelFactory.makeInventoryVM(appCoordinator: coordinator)
        shipmentsVM = ViewModelFactory.makeShipmentsVM(appCoordinator: coordinator)
    }
}