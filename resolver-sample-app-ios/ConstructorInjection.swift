//
//  ConstructorInjection.swift
//  resolver-sample-app-ios
//
//  Created by 野瀬 玲 on 2022/04/13.
//

import Foundation

class ConstructorInjectionViewModel {

    private var fetcher: XYZFetching
    private var service: XYZService

    init(fetcher: XYZFetching, service: XYZService) {
        self.fetcher = fetcher
        self.service = service
    }

    func load() -> Data {
        let token = ""
        let data = fetcher.getData(token)
        return service.decompress(data)
   }

}
