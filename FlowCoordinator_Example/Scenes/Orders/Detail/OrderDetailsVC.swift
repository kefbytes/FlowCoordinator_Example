//
//  OrderDetailsVC.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/8/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import UIKit

class OrderDetailsVC: UIViewController {

    var orderDetailsVM: OrderDetailsVMProtocol?

    init(viewModel: OrderDetailsVMProtocol) {
        self.orderDetailsVM = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
