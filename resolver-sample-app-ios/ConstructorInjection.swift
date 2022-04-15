//
//  ConstructorInjection.swift
//  resolver-sample-app-ios
//
//  Created by 野瀬 玲 on 2022/04/13.
//

import Foundation

class ConstructorInjectionViewModel {

    private var fetcher: Fetchable
    private var service: Service

    init(fetcher: Fetchable, service: Service) {
        self.fetcher = fetcher
        self.service = service
    }

    func load() -> Data {
        let token = ""
        let data = fetcher.fetchData(token)
        return service.decompress(data)
   }

}
