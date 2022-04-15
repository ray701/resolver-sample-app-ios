//
//  PropertyInjection.swift
//  resolver-sample-app-ios
//
//  Created by 野瀬 玲 on 2022/04/13.
//

import Foundation

class PropertyInjectionViewModel {
    var fetcher: Fetchable!
    var service: Service!

    func load() -> Data {
        fetcher.fetchData(service)
    }
}
