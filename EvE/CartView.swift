//
//  CartView.swift
//  EvE
//
//  Created by Abhirath Sujith on 12/07/22.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) {
                    product in
                    ProductRow(product: product)
                    
                }
                
                HStack {
                    Text("Your Cart Is Total")
                    Spacer()
                    Text("₹\(cartManager.total).00")
                        .bold()
                    
                }
                .padding()
                
            } else {
            Text("Your Cart Is Empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
