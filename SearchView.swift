//
//  SearchView.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 17/05/1444 AH.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText: String = ""

    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.green)
            
            TextField("Search by city name", text: $searchText)
                .foregroundColor(Color.gray)
                .font(.headline)
                .padding()
                .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(red: 0.897, green: 0.857, blue: 0.798))
                    .shadow(
                        color: Color(hue: 0.092, saturation: 0.27, brightness: 0.675),
                        radius: 10, x:0, y: 0)
                )
                .padding()
        }
       
        
        
    }
}
        


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

//
//  SearchView.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 17/05/1444 AH.
//

