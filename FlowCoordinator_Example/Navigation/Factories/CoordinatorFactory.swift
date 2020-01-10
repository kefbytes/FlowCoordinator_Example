//
//  CoordinatorFactory.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation
import UIKit

protocol CoordinatorFactoryProtocol {
    static func makeAppCoordinator(navigationEngine: NavigationEngineProtocol) -> AppCoordinator
    static func makeLoginCoordinator(navigationEngine: NavigationEngineProtocol) -> LoginCoordinator
    static func makeTabBarCoordinator(navigationEngine: NavigationEngineProtocol) -> TabBarCoordinator
    static func makeDashboardCoordinator(navigationEngine: NavigationEngineProtocol) -> DashboardCoordinator
    static func makeOrdersCoordinator(navigationEngine: NavigationEngineProtocol) -> OrdersCoordinator
    static func makeScanCoordinator(navigationEngine: NavigationEngineProtocol) -> ScanCoordinator
    static func makeShipmentsCoordinator(navigationEngine: NavigationEngineProtocol) -> ShipmentsCoordinator
    static func makeProductDetailsCoordinator(navigationEngine: NavigationEngineProtocol) -> ProductDetailsCoordinator
}

final class CoordinatorFactory: CoordinatorFactoryProtocol {
    static func makeAppCoordinator(navigationEngine: NavigationEngineProtocol) -> AppCoordinator {
        return AppCoordinator(navigationEngine: navigationEngine)
    }

    static func makeLoginCoordinator(navigationEngine: NavigationEngineProtocol) -> LoginCoordinator {
        return LoginCoordinator(navigationEngine: navigationEngine)
    }

    static func makeTabBarCoordinator(navigationEngine: NavigationEngineProtocol) -> TabBarCoordinator {
        return TabBarCoordinator(navigationEngine: navigationEngine)
    }

    static func makeDashboardCoordinator(navigationEngine: NavigationEngineProtocol) -> DashboardCoordinator {
        return DashboardCoordinator(navigationEngine: navigationEngine)
    }

    static func makeOrdersCoordinator(navigationEngine: NavigationEngineProtocol) -> OrdersCoordinator {
        return OrdersCoordinator(navigationEngine: navigationEngine)
    }

    static func makeScanCoordinator(navigationEngine: NavigationEngineProtocol) -> ScanCoordinator {
        return ScanCoordinator(navigationEngine: navigationEngine)
    }

    static func makeShipmentsCoordinator(navigationEngine: NavigationEngineProtocol) -> ShipmentsCoordinator {
        return ShipmentsCoordinator(navigationEngine: navigationEngine)
    }

    static func makeProductDetailsCoordinator(navigationEngine: NavigationEngineProtocol) -> ProductDetailsCoordinator {
        return ProductDetailsCoordinator(navigationEngine: navigationEngine)
    }
}
