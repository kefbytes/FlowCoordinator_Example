//
//  ShipmentsCoordinator.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/9/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation
import UIKit

class ShipmentsCoordinator: BaseCoordinator, CoordinatorProtocol {
    var engine: NavigationEngineProtocol

    required init(navigationEngine: NavigationEngineProtocol) {
        self.engine = navigationEngine
    }

    func displayShipmentDetails() {
        let coordinator = CoordinatorFactory.makeAppCoordinator(navigationEngine: engine)
        let viewModel = ViewModelFactory.makeShipmentDetailsVM(appCoordinator: coordinator)
        let viewController = ViewControllerFactory.makeShipmentDetailsVC(viewModel: viewModel)
        engine.push(viewController: viewController)
    }
}
