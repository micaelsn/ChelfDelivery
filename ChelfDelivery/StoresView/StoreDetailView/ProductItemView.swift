//
//  ProductItemView.swift
//  ChelfDelivery
//
//  Created by Micael Santos Nascimento on 19/01/24.
//

import SwiftUI

struct ProductItemView: View {
    let product: ProductType
    
    var body: some View {
        HStack(spacing: 8) {
            VStack(alignment: .leading, spacing: 8){
                Text(product.name)
                    .bold()
                Text(product.description)
                    .foregroundColor(.black.opacity(0.5))
                    .multilineTextAlignment(.leading)
                Text(product.formattedPrice)
            }
            Spacer()
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                .frame(width: 120, height: 120)
                .shadow(color: .black.opacity(0.3), radius: 20, x: 6, y: 8)
        }
        .padding()
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: storesMocks[0].products[0])
            .previewLayout(.sizeThatFits)
    }
}
