//
//  InterfaceInjection.swift
//  resolver-sample-app-ios
//
//  Created by 野瀬 玲 on 2022/04/13.
//

import Foundation
import Resolver

class InterfaceInjectionViewModel {
    lazy var fetcher: Fetchable = getFetcher()
    lazy var service: Service = getService()

    func load() -> Data {
        fetcher.fetchData(service)
    }
}

// Interface Injection
extension InterfaceInjectionViewModel: Resolving {
    func getFetcher() -> Fetchable { return resolver.resolve(args: true) }
    func getService() -> Service { return resolver.resolve() }
}
