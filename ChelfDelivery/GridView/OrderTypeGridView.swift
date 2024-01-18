//
//  OrderTypeGridView.swift
//  ChelfDelivery
//
//  Created by Micael Santos Nascimento on 17/01/24.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    var body: some View {
        LazyHGrid(rows: [
            GridItem(.fixed(100)),
            GridItem(.fixed(100))
        ]){
            ForEach(ordersMocks){
                orderItem in Text(orderItem.name)
            }
        }
    }
}

struct OrderTypeGridView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeGridView()
    }
}
