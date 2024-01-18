//
//  CarouselTabView.swift
//  ChelfDelivery
//
//  Created by Micael Santos Nascimento on 18/01/24.
//

import SwiftUI

struct CarouselTabView: View {
    let ordersMock: [OrderType] = [
        OrderType(id: 1, name: "", image: "barbecue-banner"),
        OrderType(id: 2, name: "", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "", image: "pokes-banner"),
    ]
    var body: some View {
        TabView {
            ForEach(ordersMock){
                order in CarouselItemView(order: order)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct CarouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabView()
    }
}
