//
//  ScanVC.swift
//  FlowCoordinator_Example
//
//  Created by Franks,Kent on 1/9/20.
//  Copyright © 2020 Kefbytes LLC. All rights reserved.
//

import UIKit

class ScanVC: UIViewController, VCProtocol {
    var scanVM: ScanVMProtocol?

    required init(viewModel: VMProtocol) {
        self.scanVM = viewModel as? ScanVMProtocol
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
