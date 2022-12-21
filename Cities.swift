//
//  Cities.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 21/05/1444 AH.
//

import SwiftUI

struct Cities: View {
    
    @State private var tableSelection = 0
    @State private var searchText: String = ""
    
    let citys : [CityModel] = [
       //city 1
        .init(
        nameCity: "Riyadh",
        places: [
        // place 1
        
            .init(
            namePlace: "Diriyah",
            image: "Diriyah",
            location: "Location",
            des: "Diriyah was the original home of the Saudi royal family, and served as the capital of the Emirate of Diriyah under the first Saudi dynasty from 1727 to 1818. It is located on the north-western outskirts of Riyadh. The ruins of the old city are made of mud-bricks and lay on the sides of Wadi Hanifah. It includes Turaif, AlBujairi, and Wadi Hanifah.", 
            // LANDMARKS
              landMarks:
                [
                    .init(
                    name: "Turaif",
                    image: "Turaif",
                    des: "At-Turaif is a historic district located in Al-Diriyah north-west of Riyadh which is regarded as one of the important political and historical sites in Saudi Arabia, represented the capital of Saudi dynasty, it was the original home of the Saudi royal family and the country’s first capital, from 1727 till the Ottomans sacking of the area in 1818.At-Turaif District was founded in the 15th century bearing an architectural style of Najdi; this historical site was inscribed in UNESCO World Heritage List on July 31, 2010.The various palaces in this area with an oasis and the Najdi architectural and decorative style was one of the UNESCO criteria to list the district as a World Heritage site. Moreover, The At-Turaif District was the first historical center with a unifying power in the Arabian Peninsula.There are some Historic palaces and monuments in At-Turaif district include: Salwa Palace, Saad bin Saud Palac, The Guest House and At-Turaif Bath House, Imam Mohammad bin Saud Mosque", location: "Location")
                    ,
                 .init(
                    name: "Wadi Hanifah",
                    image: "WadiHanifah",
                    des: "Wadi Hanifah historically known as Wadi al-Arad, runs for a length of 120 km from northwest to southeast, cutting through the city of Riyadh. Its current name is derived from the Banu Hanifah, the principal Arab tribe in the area at the time of the Islamic conquest of Arabia. A string of towns and villages lie along the valley, including Uyaynah, Irqah and Diriyah.",
                    location: "Location"),
                    .init(
                        name: "AlBujairi",
                        image: "AlBujairi",
                        des: "Al Bujairi Heritage Park offers different rides for children, food stalls, a market, painting, yard gatherings, and different workshops teaching tons of crafts, including pottery and calligraphy. Further to that, you can enjoy a tour of the entire park that offers a great view of Turaif district. There are also scheduled shows which are projected onto the walls of the palace, highlighting the heritage and history of Diriyah.One of the most famous attractions of the park is its story night, when people gather to listen to a famous storyteller who tells fascinating stories.",
                        location: "Location"),  ]),
                // place 2
                .init(
        namePlace: "AlMorabaa",
        image: "AlMorabaa",
        location: "z",
        des: "After the unification of Saudi Arabia, King Abdulaziz ordered building of palaces outside the former city walls of Old Riyadh, marking one of the preludes for the subsequent expansions of Riyadh. One of the places he chose was in the Murabba neighborhood in 1937 to build the Murabba Palace. According to Saudi historian Mansour al-Assaf, there was a square-shaped dry well in the neighborhood, from which the area derives its name 'al-Murabba' (lit. the square). In 1969, the Riyadh Water Tower was inaugurated in the neighborhood. In 1999, the King Abdulaziz Historical Center which contained the Abdulaziz's former Murabba Palace and the National Museum was inaugurated by King Fahd to commemorate the 100th anniversary (in terms of Hijri calendar) of Abdulaziz's capturing of Riyadh in 1902"),
        
            .init(
                namePlace: "AlMasmak",
                image: "AlMasmak",
                des: ""),
            
            .init(
                namePlace: "National Museum",
                image: "NationalMuseum",
                des: ""),
            
            .init(
                namePlace: "Water Tower",
                image: "WaterTower",
                des: ""),
            
            .init(
                namePlace: "Tuaiq Castel",
                image: "Tuaiq",
                des: "")
                    
                    ]),
        
        // city 2
        .init(
            nameCity: "Jazan 1",
            places: [
                // place 1
                .init(
                    namePlace: "Farasan Island",
                    image: "Farasan",
                    location: "Location",
                    des: "People from Arabia, Africa, and Europe have been drawn to Jazan Province since the first millennium B.C. Throughout the centuries, many people have passed through Farasan and left behind evidence of their societies, including the Aksumites and Arabs. As a result of the strategic location of Jazan Province, including the Farasan Islands, the Germans built a fort on one of the archipelago's islands during World War II. One of the main sites on the island is the sandstone village of Al Qassar, which is said to date back to the time of the Romans. It is no longer inhabited, and it has been completely rebuilt to host tourists. ",
                    landMarks:
                        [
                            .init(
                                name: "AlRifai House",
                                image: "Jazan",
                                des: "A centerpiece of Jazan province’s Farasan Island is Al-Rifai House, a beautiful palatial building belonging to Ahmed Munawar Al-Rifai. An architectural masterpiece, it features many luxurious inscriptions and decorations that reflect the region’s rich history and civilization. It Majlis (reception area) walls are beautifully decorated with colorful geometric patterns, prominent inscriptions and Qur’anic verses. It was specially constructed using local materials except for stained glass and ceiling timber imported from outside the Kingdom. The interior design featuring engraved and stucco decorations is similar to that found in India and Yemen.",
                                location: "Location"),
                                
                                .init(
                                    name: "AlNajdi Mosque",
                                    image: "AlNajdi",
                                    location: "Location"),
                                
                                .init(
                                    name: "Ottman Fort",
                                    image: "Qalaa",
                                    location: "Location")])
            ]
                    
        ),
        //City 3
        .init(nameCity: "Jeddah"),
        // City 4
        .init(nameCity: "Tabouk"),
        //City 5
        .init(nameCity: "AlQassim")
    ]
    
  
    
    init(){
        
    
            UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color("Green"))
            UISegmentedControl.appearance().setTitleTextAttributes(
                        [
                            .foregroundColor: UIColor.white
                        ], for: .selected)
//            
//    //        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color("lightGray"))]
            }
//    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()

                    .searchable(text: /*@PLACEHOLDER=$text@*/.constant("")/*@END_MENU_TOKEN@*/, placement: /*@START_MENU_TOKEN@*/.toolbar)
                
                VStack{
                    
                    Picker("select an appearnce",selection: $tableSelection) {
                        Text("Explore").tag(0)
                        Text("Map").tag(1)
                    }.pickerStyle(SegmentedPickerStyle()).padding()
                    
                    
                    Spacer()
                    
                    Text("Choose Your Destination")
                    /// .padding(.leading, -180.0)
                        .bold()
                        .foregroundColor(Color("Green"))
                        .padding(.trailing, 160.0)
                    //   font(Font.custom("", size: <#T##CGFloat#>))
                    
                    List {
                        ForEach(citys, id: \.id) { city in
                            NavigationLink {
                                City(city: city)
                            } label: {
                                Image(city.nameCity)
                                    .resizable()
                                    .frame(width: 350, height: 150)
                                    //.scaledToFill()
                                    .cornerRadius(10)
                            }
                        }.listRowBackground(Color.clear)
                            .foregroundColor(.clear)
                            .position(x: 185, y:70)
                    }.listStyle(.plain)
                        
                  
                    
                    //                    VStack{
                    //                        ScrollView{
                    //
                    //                            NavigationLink(destination: Riyadh(city: <#City#>)){
                    //                                Image("Riyadh")
                    //                                    .resizable()
                    //                                    .scaledToFill()
                    //                            }
                    //
                    //                            Button(action:{
                    //                                buttonPressed()
                    //                            }) {
                    //                                Image("Tabouk")
                    //                                    .resizable()
                    //                                    .scaledToFill()
                    //
                    //                            }
                    //
                    //                            Button(action:{
                    //                                buttonPressed()
                    //                            }) {
                    //                                Image("AlQassim")
                    //                                    .resizable()
                    //                                    .scaledToFill()
                    //
                    //
                    //                            }
                    //
                    //
                    //                            NavigationLink(destination: Jazan()){
                    //
                    //                                Image("Jazan 1")
                    //                                    .resizable()
                    //                                    .scaledToFill()
                    //
                    //                            }
                    //
                    //                            Button(action:{
                    //                                buttonPressed()
                    //                            }) {
                    //                                Image("Jeddah")
                    //                                    .resizable()
                    //                                    .scaledToFill()
                    //
                    //
                    //
                    //                            }
                    //                        }
                    //                    }
                }

            }

        }
        
    }
}

    func buttonPressed() {
        print("Button pressed")
    }
struct Cities_Previews: PreviewProvider {
    static var previews: some View {
        Cities()
    }
    
}
