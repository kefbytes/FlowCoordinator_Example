//
//  AppCoordinator.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: BaseCoordinator {

    private let engine: NavigationEngineProtocol

    init(navigationEngine: NavigationEngineProtocol) {
        engine = navigationEngine
        super.init()
    }

    override func start() {
        // preparing root view
        let loginCoordinator = CoordinatorFactory.makeLoginCoordinator(navigationEngine: engine)
        loginCoordinator.start()
    }
}
