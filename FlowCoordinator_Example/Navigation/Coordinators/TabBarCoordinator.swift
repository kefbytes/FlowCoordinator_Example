//
//  TabBarCoordinator.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation
import UIKit

class TabBarCoordinator: BaseCoordinator, CoordinatorProtocol {
    let engine: NavigationEngineProtocol

    required init(navigationEngine: NavigationEngineProtocol) {
        engine = navigationEngine
    }

    override func start() {
        let coordinator = CoordinatorFactory.makeAppCoordinator(navigationEngine: engine)
        let viewModel = ViewModelFactory.makeTabBarVM(appCoordinator: coordinator)
        let viewController = ViewControllerFactory.makeTabBarVC(viewModel: viewModel)
        engine.replace(viewController: viewController)
    }
}
