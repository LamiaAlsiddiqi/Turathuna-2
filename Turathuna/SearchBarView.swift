//
//  SearchBarView.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 14/05/1444 AH.
//

import SwiftUI

struct SearchBarView: View {
    
    
    
    @State var searchText: String = ""
    
    
    var body: some View {
        
        ZStack {
            Image("Background")
                .resizable()
                .ignoresSafeArea()
                .frame(width: 392.0, height: 845)
            
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.gray)
                
                TextField("Search by country name or place", text: $searchText)
                    .foregroundColor(Color.gray)
                    .overlay(
                        Image(systemName: "xmark.circle.fill")
            
                            .padding()
                            .offset(x: 10)
                            .foregroundColor(Color.gray)
                            .opacity(searchText.isEmpty ? 0.0 : 1.0)
                            .onTapGesture {
                                searchText = ""
                            }
                        ,alignment: .trailing
                    )
            }
            .font(.headline)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .padding()
                    .fill(Color(red: 0.897, green: 0.857, blue: 0.802))
                    .shadow(
                        color: Color(hue: 0.098, saturation: 0.208, brightness: 0.781),
                        radius: 16, x: 0, y:0)
            )
            .padding()
        }
    }
    
    struct SearchBarView_Previews: PreviewProvider {
        static var previews: some View {
            SearchBarView()
        }
    }
}
