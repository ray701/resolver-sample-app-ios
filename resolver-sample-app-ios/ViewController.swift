//
//  ViewController.swift
//  resolver-sample-app-ios
//
//  Created by 野瀬 玲 on 2022/04/13.
//

import UIKit
import Resolver
class ViewController: UIViewController {

    @Injected var interfaceInjectionViewModel: InterfaceInjectionViewModel
    @Injected var propertyInjectionViewModel: PropertyInjectionViewModel
    @Injected var constructorInjectionViewModel: ConstructorInjectionViewModel
    @Injected var serviceLocatorViewModel: ServiceLocatorViewModel
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        dump(interfaceInjectionViewModel)
        dump(propertyInjectionViewModel)
        dump(constructorInjectionViewModel)
        dump(serviceLocatorViewModel)
    }
}

