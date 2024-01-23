//
//  StoreType.swift
//  ChelfDelivery
//
//  Created by Micael Santos Nascimento on 19/01/24.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
