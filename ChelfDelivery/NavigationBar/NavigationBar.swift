//
//  NavigationBar.swift
//  ChelfDelivery
//
//  Created by Micael Santos Nascimento on 17/01/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            Spacer()
            Button("R. ofenisia freire 55"){
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "bell.badge").font(.title3).foregroundColor(.red)
            })
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
