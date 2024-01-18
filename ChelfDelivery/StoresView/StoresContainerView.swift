//
//  StoresContainerView.swift
//  ChelfDelivery
//
//  Created by Micael Santos Nascimento on 18/01/24.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30){
                ForEach(storesMocks){
                    store in StoreItemView(order: store)
                }
            }
        }.padding(20)
    }
}

struct StoresContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoresContainerView().previewLayout(.sizeThatFits)
    }
}
