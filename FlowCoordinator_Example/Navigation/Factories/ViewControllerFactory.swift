//
//  ViewControllerFactory.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation

protocol ViewControllerFactoryProtocol {
    static func makeLoginVC(viewModel: LoginVMProtocol) -> LoginVC
    static func makeTabBarVC(viewModel: TabBarVMProtocol) -> TabBarVC
    static func makeDashboardVC(viewModel: DashboardVMProtocol) -> DashboardVC
    static func makeDashboardDetailVC(viewModel: DashboardDetailVMProtocol) -> DashboardDetailVC
    static func makeOrdersVC(viewModel: OrdersVMProtocol) -> OrdersVC
    static func makeOrderDetailsVC(viewModel: OrderDetailsVMProtocol) -> OrderDetailsVC
    static func makeScanVC(viewModel: ScanVMProtocol) -> ScanVC
    static func makeInventoryVC(viewModel: InventoryVMProtocol) -> InventoryVC
    static func makeShipmentsVC(viewModel: InventoryVMProtocol) -> ShipmentsVC
    static func makeSettingsVC(viewModel: InventoryVMProtocol) -> SettingsVC
}

struct ViewControllerFactory: ViewControllerFactoryProtocol {
    static func makeLoginVC(viewModel: LoginVMProtocol) -> LoginVC {
        return LoginVC(viewModel: viewModel)
    }

    static func makeTabBarVC(viewModel: TabBarVMProtocol) -> TabBarVC {
        return TabBarVC(viewModel: viewModel)
    }

    static func makeDashboardVC(viewModel: DashboardVMProtocol) -> DashboardVC {
        return DashboardVC(viewModel: viewModel)
    }

    static func makeDashboardDetailVC(viewModel: DashboardDetailVMProtocol) -> DashboardDetailVC {
        return DashboardDetailVC(viewModel: viewModel)
    }

    static func makeOrdersVC(viewModel: OrdersVMProtocol) -> OrdersVC {
        return OrdersVC(viewModel: viewModel)
    }

    static func makeOrderDetailsVC(viewModel: OrderDetailsVMProtocol) -> OrderDetailsVC {
        return OrderDetailsVC(viewModel: viewModel)
    }

    static func makeScanVC(viewModel: ScanVMProtocol) -> ScanVC {
        return ScanVC(viewModel: viewModel)
    }

    static func makeInventoryVC(viewModel: InventoryVMProtocol) -> InventoryVC {
        return InventoryVC(viewModel: viewModel)
    }

    static func makeShipmentsVC(viewModel: InventoryVMProtocol) -> ShipmentsVC {
        return ShipmentsVC(viewModel: viewModel)
    }

    static func makeSettingsVC(viewModel: InventoryVMProtocol) -> SettingsVC {
        return SettingsVC(viewModel: viewModel)
    }
}
