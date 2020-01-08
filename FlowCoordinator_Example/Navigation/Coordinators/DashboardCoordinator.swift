//
//  DashboardCoordinator.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation
import UIKit

class DashboardCoordinator: BaseCoordinator {
    private let engine: NavigationEngineProtocol

    init(navigationEngine: NavigationEngineProtocol) {
        engine = navigationEngine
    }

    override func start() {
        let coordinator = CoordinatorFactory.makeAppCoordinator(navigationEngine: engine)
        let viewModel = ViewModelFactory.dashboardVM(appCoordinator: coordinator)
        let viewController = ViewControllerFactory.dashboardVC(viewModel: viewModel)
        engine.replace(viewController: viewController)
    }

    func displayDashboardDetails() {
        let viewController = ViewControllerFactory.dashboardDetailVC()
        engine.push(viewController: viewController)
    }
}
