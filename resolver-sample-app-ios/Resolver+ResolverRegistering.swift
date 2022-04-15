//
//  Resolver+ResolverRegistering.swift
//  resolver-sample-app-ios
//
//  Created by 野瀬 玲 on 2022/04/13.
//

import Foundation
import Resolver

// Resolver Registration
extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        // Interface Injection
        // register == main.register
        register {
            InterfaceInjectionViewModel()
        }

        register { (_, args) -> Fetchable in
            Fetcher(a: args.get())
        }

        register {
            Service()
        }

        // Property Injection
        register { PropertyInjectionViewModel() }
            .resolveProperties { resolver, object in
                object.fetcher = resolver.optional(args: true)
                object.service = resolver.optional()
            }

        // Constructor Injection
        register {
            ConstructorInjectionViewModel(fetcher: resolve(args: true), service: resolve())
        }

        // Service Locator Injection
        register {
            ServiceLocatorViewModel()
        }
    }
}

// Interface Injection
extension InterfaceInjectionViewModel: Resolving {
    func getFetcher() -> Fetchable { return resolver.resolve(args: true) }
    func getService() -> Service { return resolver.resolve() }
}
