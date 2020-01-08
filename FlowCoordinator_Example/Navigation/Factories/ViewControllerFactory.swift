//
//  ViewControllerFactory.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation

protocol ViewControllerFactoryProtocol {
    static func makeTabBarVC() -> TabBarVC
    static func makeLoginVC(viewModel: LoginVMProtocol) -> LoginVC
    static func makeDashboardVC(viewModel: DashboardVMProtocol) -> DashboardVC
    static func makeOrderslVC() -> OrdersVC
    static func makeDashboardDetailVC() -> DashboardDetailVC
}
struct ViewControllerFactory: ViewControllerFactoryProtocol {
    static func makeTabBarVC() -> TabBarVC {
        return TabBarVC()
    }

    static func makeLoginVC(viewModel: LoginVMProtocol) -> LoginVC {
        return LoginVC(viewModel: viewModel)
    }

    static func makeDashboardVC(viewModel: DashboardVMProtocol) -> DashboardVC {
        return DashboardVC(viewModel: viewModel)
    }

    static func makeOrderslVC() -> OrdersVC {
        return OrdersVC(
    }

    static func makeDashboardDetailVC() -> DashboardDetailVC {
        return DashboardDetailVC()
    }
}
