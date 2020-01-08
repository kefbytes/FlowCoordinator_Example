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
}

final class CoordinatorFactory: CoordinatorFactoryProtocol {
    static func makeAppCoordinator(navigationEngine: NavigationEngineProtocol) -> AppCoordinator {
        return AppCoordinator(navigationEngine: navigationEngine)
    }

    static func makeLoginCoordinator(navigationEngine: NavigationEngineProtocol) -> LoginCoordinator {
        return LoginCoordinator(navigationEngine: navigationEngine)
    }
}