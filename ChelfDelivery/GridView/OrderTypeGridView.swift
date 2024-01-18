//
//  OrderTypeGridView.swift
//  ChelfDelivery
//
//  Created by Micael Santos Nascimento on 17/01/24.
//

import SwiftUI

struct OrderTypeGridView: View {
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    }
    
    var body: some View {
        LazyHGrid(rows: gridLayout, spacing: 15){
            ForEach(ordersMocks){
                orderItem in OrderTypeView(orderType: orderItem)
            }
        }
        .frame(height: 200)
        .padding(.horizontal, 15)
        .padding(.top, 15)
    }
}

struct OrderTypeGridView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeGridView().previewLayout(.sizeThatFits)
    }
}
