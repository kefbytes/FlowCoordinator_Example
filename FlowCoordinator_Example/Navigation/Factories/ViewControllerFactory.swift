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
    static func makeOrderslVC(viewModel: OrdersVMProtocol) -> OrdersVC
    static func makeDashboardDetailVC() -> DashboardDetailVC
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

    static func makeOrderslVC(viewModel: OrdersVMProtocol) -> OrdersVC {
        return OrdersVC(viewModel: viewModel)
    }

    static func makeDashboardDetailVC() -> DashboardDetailVC {
        return DashboardDetailVC()
    }
}
