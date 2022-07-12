//
//  CartButton.swift
//  EvE
//
//  Created by Abhirath Sujith on 12/07/22.
//

import SwiftUI

struct CartButton: View {
    var numberofProduct: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberofProduct > 0 {
                Text("\(numberofProduct)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.mint)
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberofProduct: 1)
    }
}
