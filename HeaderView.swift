//
//  HeaderView.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 20/05/1444 AH.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Riyadh")
                    .font(.custom("PlayfairDisplay-Regular", size: 28))
                    .font(.title)
                    .fontWeight(.semibold)
            }
            Image("Background")
            
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
