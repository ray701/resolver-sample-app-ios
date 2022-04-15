//
//  InterfaceInjection.swift
//  resolver-sample-app-ios
//
//  Created by 野瀬 玲 on 2022/04/13.
//

import Foundation

class InterfaceInjectionViewModel {
    lazy var fetcher: Fetchable = getFetcher()
    lazy var service: Service = getService()

    func load() -> Data {
        fetcher.fetchData(service)
    }
}

protocol Fetchable {
    func fetchData(_ service: Service) -> Data
    func fetchData(_ token: String) -> Data
}

class Fetcher: Fetchable {
    let a: Bool
    init(a: Bool) {
        self.a = a
    }

    func fetchData(_ service: Service) -> Data {
        Data()
    }

    func fetchData(_ token: String) -> Data {
        Data()
    }
}

class Service {
    func decompress(_ data: Data) -> Data {
        Data()
    }
}
