//
//  ViewControllerFactory.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation

protocol ViewControllerFactoryProtocol {
    static func loginVC(viewModel: LoginVMProtocol) -> LoginVC
    static func dashboardVC(viewModel: DashboardVMProtocol) -> DashboardVC
    static func dashboardDetailVC() -> DashboardDetailVC
}
struct ViewControllerFactory: ViewControllerFactoryProtocol {
    static func loginVC(viewModel: LoginVMProtocol) -> LoginVC {
        return LoginVC(viewModel: viewModel)
    }

    static func dashboardVC(viewModel: DashboardVMProtocol) -> DashboardVC {
        return DashboardVC(viewModel: viewModel)
    }

    static func dashboardDetailVC() -> DashboardDetailVC {
        return DashboardDetailVC()
    }
}
