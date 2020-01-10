//
//  InventoryCoordinator.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/9/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import Foundation
import UIKit

class InventoryCoordinator: BaseCoordinator, CoordinatorProtocol {
    var engine: NavigationEngineProtocol

    required init(navigationEngine: NavigationEngineProtocol) {
        self.engine = navigationEngine
    }
}
