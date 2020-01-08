//
//  LoginVM.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation

protocol LoginVMProtocol {
    var appCoordinator: AppCoordinator? { get }
    func loginWithCredentials()
}

struct LoginVM: LoginVMProtocol {
    var appCoordinator: AppCoordinator?

    init(coordinator: AppCoordinator) {
        self.appCoordinator = coordinator
    }

    func loginWithCredentials() {
        appCoordinator?.presentDashboard()
    }
}
