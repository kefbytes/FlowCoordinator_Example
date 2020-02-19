//
//  OrdersCoordinator.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/9/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation
import UIKit

class OrdersCoordinator: BaseCoordinator, CoordinatorProtocol {
    let engine: NavigationEngineProtocol

    required init(navigationEngine: NavigationEngineProtocol) {
        engine = navigationEngine
    }

    override func start() {
        let coordinator = CoordinatorFactory.makeAppCoordinator(navigationEngine: engine)
        let viewModel = ViewModelFactory.makeOrdersVM(appCoordinator: coordinator)
        let viewController = ViewControllerFactory.makeOrdersVC(viewModel: viewModel)
        engine.replace(viewController: viewController)
    }

    func displayOrderDetails() {
        let coordinator = CoordinatorFactory.makeAppCoordinator(navigationEngine: engine)
        let viewModel = ViewModelFactory.makeOrderDetailsVM(appCoordinator: coordinator)
        let viewController = ViewControllerFactory.makeOrderDetailsVC(viewModel: viewModel)
        engine.push(viewController: viewController)
    }
}
