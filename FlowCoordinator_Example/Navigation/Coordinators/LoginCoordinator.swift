//
//  LoginCoordinator.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation
import UIKit

class LoginCoordinator {
    private let engine: NavigationEngineProtocol

    init(navigationEngine: NavigationEngineProtocol) {
        engine = navigationEngine
    }

    func start() {
        let loginVM = LoginVM()
        let loginVC = LoginVC(viewModel: loginVM)
        engine.push(viewController: loginVC)
    }
}
