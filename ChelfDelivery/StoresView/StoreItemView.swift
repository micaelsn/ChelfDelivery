//
//  StoreItemView.swift
//  ChelfDelivery
//
//  Created by Micael Santos Nascimento on 18/01/24.
//

import SwiftUI

struct StoreItemView: View {
    let store: StoreType
    
    var body: some View {
        HStack{
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            VStack{
                Text(store.name)
                    .font(.subheadline)
            }
            
            Spacer()
        }
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemView(store: storesMocks[0]).previewLayout(.sizeThatFits)
    }
}
