//
//  InterfaceInjection.swift
//  resolver-sample-app-ios
//
//  Created by 野瀬 玲 on 2022/04/13.
//

import Foundation

class InterfaceInjectionViewModel {
    lazy var fetcher: XYZFetching = getFetcher()
    lazy var service: XYZService = getService()

    func load() -> Data {
        fetcher.getData(service)
    }
}

protocol XYZFetching {
    func getData(_ service: XYZService) -> Data
    func getData(_ token: String) -> Data
}

class XYZFetcher: XYZFetching {
    let a: Bool
    init(a: Bool) {
        self.a = a
    }

    func getData(_ service: XYZService) -> Data {
        Data()
    }

    func getData(_ token: String) -> Data {
        Data()
    }
}

class XYZService {
    func decompress(_ data: Data) -> Data {
        Data()
    }
}
