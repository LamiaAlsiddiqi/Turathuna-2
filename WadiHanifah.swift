//
//  WadiHanifah.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 19/05/1444 AH.
//

import SwiftUI

struct WadiHanifah: View {
    
        var body: some View {
            VStack {
                ZStack {
                    Image("Background")
                        .resizable()
                        .ignoresSafeArea()
                    
                    VStack {
                        Image("WadiHanifah")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .edgesIgnoringSafeArea(.top)
                            
                        
                        Spacer()
                        
                        VStack {
                            Text("Wadi Hanifah")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                                .padding(.top, -23.0)
                            
                            Text("Description")
                                .fontWeight(.medium)
                                .padding(.vertical, 8.0)
                            
                            Label {
                                Text("Location").font(.system(size: 20, weight: .light, design: .rounded)).frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))

                            } icon: {
                                Image(systemName: "location.circle.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24.0, height: 25.0)
                                    .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                                    .padding(.leading)
                            }
                            
                            Text("Wadi Hanifah historically known as Wadi al-Arad, runs for a length of 120 km from northwest to southeast, cutting through the city of Riyadh. Its current name is derived from the Banu Hanifah, the principal Arab tribe in the area at the time of the Islamic conquest of Arabia. A string of towns and villages lie along the valley, including Uyaynah, Irqah and Diriyah.")
                            
                                .lineSpacing(8.0)
                                .opacity(0.6)
                                .padding()
                            
                            
                            Spacer()
                            Spacer()
                            

                          
                           
                        }
                            }
                        }
                    }
          
                    }
                    
                }
                


struct WadiHanifah_Previews: PreviewProvider {
    static var previews: some View {
        WadiHanifah()
    }
}
