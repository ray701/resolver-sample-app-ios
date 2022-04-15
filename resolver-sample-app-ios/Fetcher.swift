//
//  Fetcher.swift
//  resolver-sample-app-ios
//
//  Created by 野瀬 玲 on 2022/04/15.
//

import Foundation

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
