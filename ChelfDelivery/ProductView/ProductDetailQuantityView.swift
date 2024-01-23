//
//  ProductDetailQuantityView.swift
//  ChelfDelivery
//
//  Created by Micael Santos Nascimento on 22/01/24.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    @Binding var productQuantity: Int
    
    func setQuantity(quantity: Int){
        if(quantity + productQuantity >= 1){
            productQuantity = quantity + productQuantity
        }
    }
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Quantidade")
                .font(.title3)
                .bold()
        
            HStack {
                Button {
                    setQuantity(quantity: -1)
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                
                Text("\(productQuantity)")
                    .font(.title2)
                    .bold()
                
                Button {
                    setQuantity(quantity: 1)
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                }

            }
        }
    }
}

struct ProductDetailQuantityView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailQuantityView(productQuantity: .constant(1))
    }
}
