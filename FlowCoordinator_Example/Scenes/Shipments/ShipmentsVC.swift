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
        view.backgroundColor = .systemGreen
        self.title = "Shipments"
        setupDetailsButton()
    }

    // MARK: UI
    private func setupDetailsButton() {
        let detailsButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        detailsButton.center = view.center
        detailsButton.setTitle("Go to details", for: .normal)
        detailsButton.addTarget(self, action: #selector(self.presentDetailsAction), for: .touchUpInside)
        view.addSubview(detailsButton)
    }

    // MARK: Actions
    @objc private func presentDetailsAction() {
        shipmentsVM?.displayShipmentDetails()
    }
}
