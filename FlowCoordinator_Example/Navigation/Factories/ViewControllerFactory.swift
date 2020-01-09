//
//  ViewControllerFactory.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation

protocol ViewControllerFactoryProtocol {
    static func makeTabBarVC(viewModel: TabBarVMProtocol) -> TabBarVC
    static func makeLoginVC(viewModel: LoginVMProtocol) -> LoginVC
    static func makeDashboardVC(viewModel: DashboardVMProtocol) -> DashboardVC
    static func makeDashboardDetailVC() -> DashboardDetailVC
    static func makeOrderslVC(viewModel: OrdersVMProtocol) -> OrdersVC
    static func makeOrderDetailslVC(viewModel: OrderDetailsVMProtocol) -> OrderDetailsVC
}

struct ViewControllerFactory: ViewControllerFactoryProtocol {
    static func makeTabBarVC(viewModel: TabBarVMProtocol) -> TabBarVC {
        return TabBarVC(viewModel: viewModel)
    }

    static func makeLoginVC(viewModel: LoginVMProtocol) -> LoginVC {
        return LoginVC(viewModel: viewModel)
    }

    static func makeDashboardVC(viewModel: DashboardVMProtocol) -> DashboardVC {
        return DashboardVC(viewModel: viewModel)
    }

    static func makeDashboardDetailVC() -> DashboardDetailVC {
        return DashboardDetailVC()
    }

    static func makeOrderslVC(viewModel: OrdersVMProtocol) -> OrdersVC {
        return OrdersVC(viewModel: viewModel)
    }

    static func makeOrderDetailslVC(viewModel: OrderDetailsVMProtocol) -> OrderDetailsVC {
        return OrderDetailsVC(viewModel: viewModel)
    }
}
