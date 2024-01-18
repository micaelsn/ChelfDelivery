//
//  OrderTypeView.swift
//  ChelfDelivery
//
//  Created by Micael Santos Nascimento on 18/01/24.
//

import SwiftUI

struct OrderTypeView: View {
    let orderType: OrderType
    
    var body: some View {
        VStack(spacing: 5){
            Image(orderType.image)
            Text(orderType.name)
        }
    }
}

struct OrderTypeView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeView(orderType: OrderType(id: 1, name: "Restaurante", image: "hamburguer"))
    }
}
