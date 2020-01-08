//
//  LoginCoordinator.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation
import UIKit

class LoginCoordinator: BaseCoordinator {
    private let engine: NavigationEngineProtocol

    init(navigationEngine: NavigationEngineProtocol) {
        engine = navigationEngine
    }

    override func start() {
        let coordinator = CoordinatorFactory.makeAppCoordinator(navigationEngine: engine)
        let loginVM = ViewModelFactory.makeLoginVM(appCoordinator: coordinator)
        let loginVC = ViewControllerFactory.makeLoginVC(viewModel: loginVM)
        engine.push(viewController: loginVC)
    }
}
