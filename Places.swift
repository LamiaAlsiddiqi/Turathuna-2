//
//  Riyadh.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 20/05/1444 AH.
//

import SwiftUI

struct City : Identifiable {
    var id = UUID()
    var nameCity : String
}

struct Places : Identifiable {
    var id = UUID()
    var namePlace : String
}

struct Places: View {
    @State private var search: String = ""

    @State var city : City

   
    var body: some View {
        
        ZStack{
            
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            //            Image("Turathuna")
            //                .resizable()
            //                .frame(width: 350.0, height: 500.0)
            //                .ignoresSafeArea()
            //                .position(x:194, y:60)
            
            
            VStack{
                


                Image(city.nameCity)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                //                .position(x: 194 , y:250)
                
                
                
                ScrollView (.vertical, showsIndicators: false) {
                 
                    
                    HStack {
                        VStack{
                            NavigationLink(destination: Diriyah()){
                                Image("Diriyah")
                                    .resizable()
                                    .cornerRadius (10)
                                    .frame(width: 150, height: 150.0)
                                    .padding()

                            }


                            Text("Diriyah").lineLimit(nil).padding(.top,-20)
                                .font(.system(size: 21))
                                .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                        }.navigationBarTitle(Text(""), displayMode:.automatic)

                        
                        VStack{
                            Button  { print("s")
                            } label: {
                                Image("AlMorabaa")
                                    .resizable()
                                    .cornerRadius (10)
                                    .frame(width: 150, height: 150.0)


                                .padding() }


                            Text("AlMorabaa").lineLimit(nil)
                            //                                .padding(.top,-20)
                                .font(.system(size: 21))
                                .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                        }.navigationBarTitle(Text(""), displayMode:.automatic)
                    }
                    
                    
                                        HStack {
                                            VStack{
                                                Button  { print("s")
                                                } label: {
                                                    Image("AlMasmak")
                                                        .resizable()
                                                        .cornerRadius (10)
                                                        .frame(width: 150, height: 150.0)
                    
                                                    .padding() }
                    
                                                Text("AlMasmak").lineLimit(nil).padding(.top,-20)
                                                    .font(.system(size: 21))
                                                    .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                                            }
                    
                                            VStack{
                                                Button  { print("s")
                                                } label: {
                                                    Image("NationalMuseum")
                                                        .resizable()
                                                        .cornerRadius (10)
                                                        .frame(width: 150, height: 150.0)
                    
                    
                                                    .padding() }
                    
                                                Text("National Museum").lineLimit(nil).padding(.top,-20)
                                                    .font(.system(size: 21))
                                                    .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                                            }
                                        }
                    
                                        HStack {
                                            VStack{
                                                Button  { print("s")
                                                } label: {
                                                    Image("WaterTower")
                                                        .resizable()
                                                        .cornerRadius (10)
                                                        .frame(width: 150, height: 150.0)
                    
                    
                                                    .padding() }
                    
                                                Text("Water Tower").lineLimit(nil).padding(.top,-18.0)
                                                    .font(.system(size: 21))
                                                    .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                                            }
                    
                                            VStack{
                                                Button  { print("s")
                                                } label: {
                                                    Image("Tuaiq")
                                                        .resizable()
                                                        .cornerRadius (10)
                                                        .frame(width: 150, height: 150.0)
                    
                    
                                                    .padding() }
                    
                                                Text("Tuaiq Castle").lineLimit(nil).padding(.top,-20)
                                                    .font(.system(size: 21))
                                                    .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                                            }
                    
                                        }
                    
                    
                }
                
                //                .position(x:196 , y:730)
                
                
            }
            .searchable(text: $search)
        }
        
    }
}





struct Riyadh_Previews: PreviewProvider {
    static var previews: some View {
        Riyadh(city: .init(nameCity: "Riyadh"))
        
    }
}

struct SearchAndScanView: View {
    @Binding var search: String
    var body: some View {
        HStack {
            
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search", text: $search)
            }
            .foregroundColor(.gray)
            .padding(.all, 10)
            .background(Color("Primary 3"))
            .cornerRadius(10.0)
            .padding(.trailing, 8)
            
            
        }
        .padding(.horizontal)
    }
}
