//
//  AlBujairi.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 19/05/1444 AH.
//

import SwiftUI

struct AlBujairi: View {
    var body: some View {
        VStack {
            ZStack {
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    Image("AlBujairi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 600, height: 280)
                        .edgesIgnoringSafeArea(.top)
                    
                    
                    Spacer()
                    
                    
                    VStack {
                        Text("AlBujairi")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                            .padding(.top, -23.0)
                        
                        Text("Description")
                            .fontWeight(.medium)
                            .padding(.vertical, 8.0)
                        
                        ScrollView {
                            HStack(alignment: .center) {
                                Label {
                                    Text("Location").font(.system(size: 20, weight: .light, design: .rounded)).frame(maxWidth: .infinity, alignment: .leading)
                                        .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))

                                } icon: {
                                    Image(systemName: "location.circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 24.0, height: 25.0)
                                        .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                                        .padding(.leading, 120.0)
                                }
                            }
                            
                            Text("Al Bujairi Heritage Park offers different rides for children, food stalls, a market, painting, yard gatherings, and different workshops teaching tons of crafts, including pottery and calligraphy. Further to that, you can enjoy a tour of the entire park that offers a great view of Turaif district. There are also scheduled shows which are projected onto the walls of the palace, highlighting the heritage and history of Diriyah.One of the most famous attractions of the park is its story night, when people gather to listen to a famous storyteller who tells fascinating stories.")
                            
                                .lineSpacing(8.0)
                                .opacity(0.6)
                                .padding(.horizontal, 117.0)
                            
                            
                            Spacer()
                            Spacer()
                            
                            
                            
                            
                            
                        }
                    }
                }
            }
            
        }
        
    }
}


            

struct AlBujairi_Previews: PreviewProvider {
    static var previews: some View {
        AlBujairi()
    }
}
