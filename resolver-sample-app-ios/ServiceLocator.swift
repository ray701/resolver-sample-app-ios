//
//  ServiceLocator.swift
//  resolver-sample-app-ios
//
//  Created by 野瀬 玲 on 2022/04/13.
//

import Foundation
import Resolver

class ServiceLocatorViewModel {

    var fetcher: Fetchable = Resolver.resolve(args: true)
    var service: Service = Resolver.resolve()

    func load() -> Data {
        return fetcher.fetchData(service)
    }

}
