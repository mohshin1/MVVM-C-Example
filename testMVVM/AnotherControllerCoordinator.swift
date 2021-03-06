//
//  AnotherControllerCoordinator.swift
//  MVVMTestProject
//
//  Created by Petr Zvoníček on 02.03.17.
//  Copyright © 2017 Martin Pinka. All rights reserved.
//

import UIKit

class AnotherCoordinator: DefaultCoordinator {

    let serviceHolder: ServiceHolder

    weak var viewController: AnotherViewController?

    init(services: ServiceHolder) {
        self.serviceHolder = services
        self.viewController = UIStoryboard(name: "AnotherViewController", bundle: nil).instantiateInitialViewController() as? AnotherViewController
    }

    func start() {
        viewController?.coordinator = self
    }
}
