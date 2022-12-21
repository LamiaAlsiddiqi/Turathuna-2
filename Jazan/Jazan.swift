////
////  Jazan.swift
////  Turathuna
////
////  Created by Lamia AlSiddiqi on 21/05/1444 AH.
////
//
//import SwiftUI
//
//struct Jazan: View {
//    @State private var searchText: String = ""
//
//    var body: some View {
//     
//        NavigationView {
//            ZStack{
//                
//
//                Image("Background")
//                    .resizable()
//                    .ignoresSafeArea()
//                
//
//                Image("Jazan 1")
//                
//               .resizable()
//               .aspectRatio(contentMode: .fit)
//               .position(x: 194 , y:250)
//
//                
//                ScrollView(.vertical){
//                    HStack {
//                        VStack{
//                            NavigationLink(destination: Farasan()){
//
//                                Image("Farasan")
//                                    .resizable()
//                                    .cornerRadius (10)
//                                    .frame(width: 150, height: 150.0)
//                                
//                                .padding() }
//                            
//                            Text("Farasan Island").lineLimit(nil).padding(.top,-20)
//                                .font(.system(size: 21))
//                                .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
//                        }.navigationBarTitle(Text(""), displayMode:.automatic)
//                        
//                        VStack{
//                            Button  { print("s")
//                            } label: {
//                                Image("Cave")
//                                    .resizable()
//                                    .cornerRadius (10)
//                                    .frame(width: 150, height: 150.0)
//
//                                
//                                .padding() }
//                            
//                            Text("Shaza Cave").lineLimit(nil).padding(.top,-20)
//                                .font(.system(size: 21))
//                                .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
//                        }.navigationBarTitle(Text(""), displayMode:.automatic)
//                    }
//                        
//                    
//                    HStack {
//                        VStack{
//                            Button  { print("s")
//                            } label: {
//                                Image("Mosque")
//                                    .resizable()
//                                    .cornerRadius (10)
//                                    .frame(width: 150, height: 150.0)
//
//                                .padding() }
//                            
//                            Text("AlQubab Mosque").lineLimit(nil).padding(.top,-20)
//                                .font(.system(size: 21))
//                                .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
//                        }
//                        
//                        VStack{
//                            Button  { print("s")
//                            } label: {
//                                Image("AlDossariya fort")
//                                    .resizable()
//                                    .cornerRadius (10)
//                                    .frame(width: 150, height: 150.0)
//
//                                
//                                .padding() }
//                            
//                            Text("AlDossariya fort").lineLimit(nil).padding(.top,-20)
//                                .font(.system(size: 21))
//                                .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
//                        }
//                    }
//                        
//                    HStack {
//                        VStack{
//                            Button  { print("s")
//                            } label: {
//                                Image("EdarsaHouses")
//                                    .resizable()
//                                    .cornerRadius (10)
//                                    .frame(width: 150, height: 150.0)
//
//                                
//                                .padding() }
//                            
//                            Text("AlAdarsa Houses").lineLimit(nil).padding(.top,-18.0)
//                                .font(.system(size: 21))
//                                .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
//                        }
//                        
//                        VStack{
//                            Button  { print("s")
//                            } label: {
//                                Image("Cradle")
//                                    .resizable()
//                                    .cornerRadius (10)
//                                    .frame(width: 150, height: 150.0)
//
//                                
//                                .padding() }
//                            
//                            Text("Tuaiq Castle").lineLimit(nil).padding(.top,-20)
//                                .font(.system(size: 21))
//                                .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
//                        }
//                        
//                    }
//                    
//                    
//                }
//                
//                .position(x:196 , y:730)
//
//                
//                
//            }
//        }
//            
//            }
//        
//            }
//            
//struct Jazan_Previews: PreviewProvider {
//    static var previews: some View {
//        Jazan()
//    }
//}
