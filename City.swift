//
//  Riyadh.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 20/05/1444 AH.
//

import SwiftUI

struct CityModel : Identifiable {
    var id = UUID()
    var nameCity : String
    var places : [Places]?
}

struct Places : Identifiable {
    var id = UUID()
    var namePlace : String
    var image: String
    var location : String?
    var des: String
    var landMarks : [LandMark]?
  
}
struct LandMark : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var des : String?
    var location : String?
}

struct City: View {
    @State private var search: String = ""
    
    @State var city : CityModel =     //city 1
        .init(
        nameCity: "Riyadh",
        places: [
        // place 1
            
        .init(
            namePlace: "Diriyah",
            image: "Diriyah",
            location: "s",
            des: "Diriyah was the original home of the Saudi royal family, and served as the capital of the Emirate of Diriyah under the first Saudi dynasty from 1727 to 1818. It is located on the north-western outskirts of Riyadh. The ruins of the old city are made of mud-bricks and lay on the sides of Wadi Hanifah. It includes Turaif, AlBujairi, and Wadi Hanifah.",
            // LANDMARKS
              landMarks:
                [
                    .init(
                    name: "Turaif",
                    image: "Turaif",
                    des: "At-Turaif is a historic district located in Al-Diriyah north-west of Riyadh which is regarded as one of the important political and historical sites in Saudi Arabia, represented the capital of Saudi dynasty, it was the original home of the Saudi royal family and the country’s first capital, from 1727 till the Ottomans sacking of the area in 1818.At-Turaif District was founded in the 15th century bearing an architectural style of Najdi; this historical site was inscribed in UNESCO World Heritage List on July 31, 2010.The various palaces in this area with an oasis and the Najdi architectural and decorative style was one of the UNESCO criteria to list the district as a World Heritage site. Moreover, The At-Turaif District was the first historical center with a unifying power in the Arabian Peninsula.There are some Historic palaces and monuments in At-Turaif district include: Salwa Palace, Saad bin Saud Palac, The Guest House and At-Turaif Bath House, Imam Mohammad bin Saud Mosque", location: "s1")
                    ,
                 .init(
                    name: "Wadi Hanifah",
                    image: "WadiHanifah",
                    des: "Wadi Hanifah historically known as Wadi al-Arad, runs for a length of 120 km from northwest to southeast, cutting through the city of Riyadh. Its current name is derived from the Banu Hanifah, the principal Arab tribe in the area at the time of the Islamic conquest of Arabia. A string of towns and villages lie along the valley, including Uyaynah, Irqah and Diriyah.",
                    location: "b"),
                    .init(
                        name: "AlBujairi",
                        image: "AlBujairi",
                        des: "Al Bujairi Heritage Park offers different rides for children, food stalls, a market, painting, yard gatherings, and different workshops teaching tons of crafts, including pottery and calligraphy. Further to that, you can enjoy a tour of the entire park that offers a great view of Turaif district. There are also scheduled shows which are projected onto the walls of the palace, highlighting the heritage and history of Diriyah.One of the most famous attractions of the park is its story night, when people gather to listen to a famous storyteller who tells fascinating stories.",
                        location: "C")  ]),
                // place 2
                .init(namePlace: "AlMorabaa", image: "AlMorabaa", location: "z", des: "After the unification of Saudi Arabia, King Abdulaziz ordered building of palaces outside the former city walls of Old Riyadh, marking one of the preludes for the subsequent expansions of Riyadh. One of the places he chose was in the Murabba neighborhood in 1937 to build the Murabba Palace. According to Saudi historian Mansour al-Assaf, there was a square-shaped dry well in the neighborhood, from which the area derives its name 'al-Murabba' (lit. the square). In 1969, the Riyadh Water Tower was inaugurated in the neighborhood. In 1999, the King Abdulaziz Historical Center which contained the Abdulaziz's former Murabba Palace and the National Museum was inaugurated by King Fahd to commemorate the 100th anniversary (in terms of Hijri calendar) of Abdulaziz's capturing of Riyadh in 1902")
        ,.init(namePlace: "AlMasmak", image: "AlMasmak", des: "a"), .init(namePlace: "National Museum", image: "NationalMuseum", des: "1"), .init(namePlace: "Water Tower", image: "WaterTower", des: "b"), .init(namePlace: "Tuaiq Castel", image: "Tuaiq", des: "1")
                    
                    ])
    
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
                
                
                List {

                    ForEach(city.places ?? [Places(namePlace: "", image: "Diriyah", des: "")], id: \.id) { place in

                        NavigationLink {
                            PlacesView(places: place)
                            //LandMark(place: place)
                            //City(city: city)
                            //                            Diriyah(places: place)
                        } label: {
                            HStack {
                                Image(place.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 110)
                                    .cornerRadius(10)
                                Text(place.namePlace)
                                    .foregroundColor(.black)
                                    .bold()
                                    
                                
                            }
                        }
                    }
                    .listRowBackground(Color.clear)
                        .foregroundColor(.clear)

                }.listStyle(.plain)
                    
                
                //                ScrollView (.vertical, showsIndicators: false) {
                //
                //
                //                    HStack {
                //                        VStack{
                //                            NavigationLink(destination: Diriyah()){
                //                                Image("Diriyah")
                //                                    .resizable()
                //                                    .cornerRadius (10)
                //                                    .frame(width: 150, height: 150.0)
                //                                    .padding()
                //
                //                            }
                //
                //
                //                            Text("Diriyah").lineLimit(nil).padding(.top,-20)
                //                                .font(.system(size: 21))
                //                                .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                //                        }.navigationBarTitle(Text(""), displayMode:.automatic)
                //
                //
                //                        VStack{
                //                            Button  { print("s")
                //                            } label: {
                //                                Image("AlMorabaa")
                //                                    .resizable()
                //                                    .cornerRadius (10)
                //                                    .frame(width: 150, height: 150.0)
                //
                //
                //                                .padding() }
                //
                //
                //                            Text("AlMorabaa").lineLimit(nil)
                //                            //                                .padding(.top,-20)
                //                                .font(.system(size: 21))
                //                                .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                //                        }.navigationBarTitle(Text(""), displayMode:.automatic)
                //                    }
                //
                //
                //                                        HStack {
                //                                            VStack{
                //                                                Button  { print("s")
                //                                                } label: {
                //                                                    Image("AlMasmak")
                //                                                        .resizable()
                //                                                        .cornerRadius (10)
                //                                                        .frame(width: 150, height: 150.0)
                //
                //                                                    .padding() }
                //
                //                                                Text("AlMasmak").lineLimit(nil).padding(.top,-20)
                //                                                    .font(.system(size: 21))
                //                                                    .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                //                                            }
                //
                //                                            VStack{
                //                                                Button  { print("s")
                //                                                } label: {
                //                                                    Image("NationalMuseum")
                //                                                        .resizable()
                //                                                        .cornerRadius (10)
                //                                                        .frame(width: 150, height: 150.0)
                //
                //
                //                                                    .padding() }
                //
                //                                                Text("National Museum").lineLimit(nil).padding(.top,-20)
                //                                                    .font(.system(size: 21))
                //                                                    .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                //                                            }
                //                                        }
                //
                //                                        HStack {
                //                                            VStack{
                //                                                Button  { print("s")
                //                                                } label: {
                //                                                    Image("WaterTower")
                //                                                        .resizable()
                //                                                        .cornerRadius (10)
                //                                                        .frame(width: 150, height: 150.0)
                //
                //
                //                                                    .padding() }
                //
                //                                                Text("Water Tower").lineLimit(nil).padding(.top,-18.0)
                //                                                    .font(.system(size: 21))
                //                                                    .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                //                                            }
                //
                //                                            VStack{
                //                                                Button  { print("s")
                //                                                } label: {
                //                                                    Image("Tuaiq")
                //                                                        .resizable()
                //                                                        .cornerRadius (10)
                //                                                        .frame(width: 150, height: 150.0)
                //
                //
                //                                                    .padding() }
                //
                //                                                Text("Tuaiq Castle").lineLimit(nil).padding(.top,-20)
                //                                                    .font(.system(size: 21))
                //                                                    .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                //                                            }
                //
                //                                        }
                //
                //
                //                }
                
                //                .position(x:196 , y:730)
                
                
            }
            .searchable(text: $search)
        }
        
    }
    
}
struct Riyadh_Previews: PreviewProvider {
    static var previews: some View {
        
        City(city: .init(
            nameCity: "Riyadh",
            places: [
            // place 1
                
            .init(
                namePlace: "Diriyah",
                image: "Diriyah",
                location: "s",
                des: "Diriyah was the original home of the Saudi royal family, and served as the capital of the Emirate of Diriyah under the first Saudi dynasty from 1727 to 1818. It is located on the north-western outskirts of Riyadh. The ruins of the old city are made of mud-bricks and lay on the sides of Wadi Hanifah. It includes Turaif, AlBujairi, and Wadi Hanifah.",
                // LANDMARKS
                  landMarks:
                    [
                        .init(
                        name: "Turaif",
                        image: "Turaif",
                        des: "At-Turaif is a historic district located in Al-Diriyah north-west of Riyadh which is regarded as one of the important political and historical sites in Saudi Arabia, represented the capital of Saudi dynasty, it was the original home of the Saudi royal family and the country’s first capital, from 1727 till the Ottomans sacking of the area in 1818.At-Turaif District was founded in the 15th century bearing an architectural style of Najdi; this historical site was inscribed in UNESCO World Heritage List on July 31, 2010.The various palaces in this area with an oasis and the Najdi architectural and decorative style was one of the UNESCO criteria to list the district as a World Heritage site. Moreover, The At-Turaif District was the first historical center with a unifying power in the Arabian Peninsula.There are some Historic palaces and monuments in At-Turaif district include: Salwa Palace, Saad bin Saud Palac, The Guest House and At-Turaif Bath House, Imam Mohammad bin Saud Mosque", location: "s1")
                        ,
                     .init(
                        name: "Wadi Hanifah",
                        image: "WadiHanifah",
                        des: "Wadi Hanifah historically known as Wadi al-Arad, runs for a length of 120 km from northwest to southeast, cutting through the city of Riyadh. Its current name is derived from the Banu Hanifah, the principal Arab tribe in the area at the time of the Islamic conquest of Arabia. A string of towns and villages lie along the valley, including Uyaynah, Irqah and Diriyah.",
                        location: "b"),
                        .init(
                            name: "AlBujairi",
                            image: "AlBujairi",
                            des: "Al Bujairi Heritage Park offers different rides for children, food stalls, a market, painting, yard gatherings, and different workshops teaching tons of crafts, including pottery and calligraphy. Further to that, you can enjoy a tour of the entire park that offers a great view of Turaif district. There are also scheduled shows which are projected onto the walls of the palace, highlighting the heritage and history of Diriyah.One of the most famous attractions of the park is its story night, when people gather to listen to a famous storyteller who tells fascinating stories.",
                            location: "C")  ]),
                    // place 2
                    .init(namePlace: "AlMorabaa", image: "AlMorabaa", location: "z", des: "After the unification of Saudi Arabia, King Abdulaziz ordered building of palaces outside the former city walls of Old Riyadh, marking one of the preludes for the subsequent expansions of Riyadh. One of the places he chose was in the Murabba neighborhood in 1937 to build the Murabba Palace. According to Saudi historian Mansour al-Assaf, there was a square-shaped dry well in the neighborhood, from which the area derives its name 'al-Murabba' (lit. the square). In 1969, the Riyadh Water Tower was inaugurated in the neighborhood. In 1999, the King Abdulaziz Historical Center which contained the Abdulaziz's former Murabba Palace and the National Museum was inaugurated by King Fahd to commemorate the 100th anniversary (in terms of Hijri calendar) of Abdulaziz's capturing of Riyadh in 1902")
            ,.init(namePlace: "AlMasmak", image: "AlMasmak", des: "a"), .init(namePlace: "National Museum", image: "NationalMuseum", des: "1"), .init(namePlace: "Water Tower", image: "WaterTower", des: "b"), .init(namePlace: "Tuaiq Castel", image: "Tuaiq", des: "1")
                        
                        ]))
        
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
