//
//  ViewModelFactory.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation

protocol ViewModelFactoryProtocol {
    static func loginVM(appCoordinator: AppCoordinator) -> LoginVM
    static func dashboardVM(appCoordinator: AppCoordinator) -> DashboardVM
}

struct ViewModelFactory: ViewModelFactoryProtocol {
    static func loginVM(appCoordinator: AppCoordinator) -> LoginVM {
        return LoginVM(coordinator: appCoordinator)
    }

    static func dashboardVM(appCoordinator: AppCoordinator) -> DashboardVM {
        return DashboardVM(coordinator: appCoordinator)
    }
}
