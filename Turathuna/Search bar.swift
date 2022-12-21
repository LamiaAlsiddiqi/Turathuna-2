//
//  Search bar.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 14/05/1444 AH.
//

import SwiftUI

struct Search_bar: View {
    
    @State var Search
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.theme.secondaryText)
            TextField("Search by name", text: Binding<String)
            
        }
    }
}

struct Search_bar_Previews: PreviewProvider {
    static var previews: some View {
        Search_bar()
    }
}
