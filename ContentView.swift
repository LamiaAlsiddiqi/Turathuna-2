//
//  ContentView.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 13/05/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    
var body: some View {
VStack {
ZStack {
Image("Background")
.resizable()
.ignoresSafeArea()
                        
VStack {
Image("Diriyah")
.resizable()
.aspectRatio(contentMode: .fit)
.edgesIgnoringSafeArea(.top)
                            
Spacer()
                            
VStack {
Text("Diriyah")
.font(.title)
.fontWeight(.bold)
.foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
.padding(.top, -24.0)
                                
Text("Description")
.fontWeight(.medium)
.padding(.vertical, 8.0)
                                
Text("Diriyah was the original home of the Saudi royal family, and served as the capital of the Emirate of Diriyah under the first Saudi dynasty from 1727 to 1818. It is located on the north-western outskirts of Riyadh. The ruins of the old city are made of mud-bricks and lay on the sides of Wadi Hanifah. It includes Turaif, AlBujairi, and Wadi Hanifah.")
.lineSpacing(8.0)
.font(.body)
.opacity(0.6)
.padding()
                                
Spacer()
    Spacer()
           

    ScrollView {
        VStack {
            ForEach(0..<1) { index in
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack {
                        ForEach(0..<1) { index in
                            Image("Turaif")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 175)
                            .cornerRadius(30)
                            
                            Image("WadiHanifah")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 175)
                            .cornerRadius(30)
                            
                            Image("AlBujairi")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 175)
                            .cornerRadius(30)
                        }
                    }
                    
                    
                })
            }
        }
    }

    
           
                                
   
}
 }
  }
   }
              
     }
                        
       }
                    
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
            
        }
        

