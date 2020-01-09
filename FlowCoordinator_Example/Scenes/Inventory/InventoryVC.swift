//
//  InventoryVC.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/9/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import UIKit

class InventoryVC: UIViewController, VCProtocol {
    var inventoryVM: InventoryVMProtocol?

    required init(viewModel: VMProtocol) {
        self.inventoryVM = viewModel as? InventoryVMProtocol
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
