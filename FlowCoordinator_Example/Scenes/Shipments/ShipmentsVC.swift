//
//  ShipmentsVC.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/9/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import UIKit

class ShipmentsVC: UIViewController, VCProtocol {
    var shipmentsVM: ShipmentsVMProtocol?

    required init(viewModel: VMProtocol) {
        self.shipmentsVM = viewModel as? ShipmentsVMProtocol
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        self.title = "Shipments"
    }
}
