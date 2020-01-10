//
//  ProductDetailsCoordinator.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/10/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation
import UIKit

class ProductDetailsCoordinator: BaseCoordinator, CoordinatorProtocol {
    let engine: NavigationEngineProtocol

    required init(navigationEngine: NavigationEngineProtocol) {
        engine = navigationEngine
    }

    override func start() {
        let coordinator = CoordinatorFactory.makeAppCoordinator(navigationEngine: engine)
        let viewModel = ViewModelFactory.makeProductDetailsVM(appCoordinator: coordinator)
        let viewController = ViewControllerFactory.makeProductDetailsVC(viewModel: viewModel)
        engine.push(viewController: viewController)
    }
}
