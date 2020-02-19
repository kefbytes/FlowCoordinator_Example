//
//  ScanCoordinator.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/9/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation

class ScanCoordinator: BaseCoordinator, CoordinatorProtocol {
    var engine: NavigationEngineProtocol
    
    required init(navigationEngine: NavigationEngineProtocol) {
        self.engine = navigationEngine
    }

    func scanComplete() {
        let coordinator = CoordinatorFactory.makeAppCoordinator(navigationEngine: engine)
        let productDetailsVM = ViewModelFactory.makeProductDetailsVM(appCoordinator: coordinator)
        let productDetailsVC = ViewControllerFactory.makeProductDetailsVC(viewModel: productDetailsVM)
        engine.push(viewController: productDetailsVC)
    }
}
