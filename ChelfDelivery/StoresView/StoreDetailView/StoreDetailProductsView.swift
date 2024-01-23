//
//  StoreDetailProductsView.swift
//  ChelfDelivery
//
//  Created by Micael Santos Nascimento on 22/01/24.
//

import SwiftUI

struct StoreDetailProductsView: View {
    let products: [ProductType]
    @State private var selectedProduct: ProductType?
    
    var body: some View {
        VStack {
            Text("Produtos")
                .font(.title2)
                .bold()
                .padding()
            ForEach(products){
                product in
                Button {
                   selectedProduct = product
                } label: {
                    ProductItemView(product: product)
                        .foregroundColor(.black)
                }
                .sheet(item: $selectedProduct) { product in
                    ProductDetailView(product: product)
                }
            }
        }
    }
}

struct StoreDetailProductsView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailProductsView(products: storesMocks[0].products)
    }
}
