//
//  ViewModelFactory.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation

protocol ViewModelFactoryProtocol {
    static func makeLoginVM(appCoordinator: AppCoordinator) -> LoginVMProtocol
    static func makeTabBarVM(appCoordinator: AppCoordinator) -> TabBarVMProtocol
    static func makeDashboardVM(appCoordinator: AppCoordinator) -> DashboardVMProtocol
    static func makeOrdersVM(appCoordinator: AppCoordinator) -> OrdersVMProtocol
}

struct ViewModelFactory: ViewModelFactoryProtocol {
    static func makeLoginVM(appCoordinator: AppCoordinator) -> LoginVMProtocol {
        return LoginVM(coordinator: appCoordinator)
    }

    static func makeTabBarVM(appCoordinator: AppCoordinator) -> TabBarVMProtocol {
        return TabBarVM(coordinator: appCoordinator)
    }

    static func makeDashboardVM(appCoordinator: AppCoordinator) -> DashboardVMProtocol {
        return DashboardVM(coordinator: appCoordinator)
    }

    static func makeOrdersVM(appCoordinator: AppCoordinator) -> OrdersVMProtocol {
        return OrdersVM(coordinator: appCoordinator)
    }
}
