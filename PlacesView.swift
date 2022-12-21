//
//  Diriyah.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 19/05/1444 AH.
//

import SwiftUI

struct PlacesView: View {
        
    
    @State var places : Places
    
    var body: some View {
//    NavigationView {
            
    VStack {
        ZStack {
            Image("Background")
                .resizable()
                .ignoresSafeArea()
        
        VStack {
            Image(places.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .edgesIgnoringSafeArea(.top)
            Spacer()
                        
        VStack {
            Text(places.namePlace)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.173, green: 0.417, blue: 0.233))
                    .padding(.top, -23.0)
                        
//            Text(places.des)
//            .fontWeight(.medium)
//            .padding(.vertical, 8.0)
//
        VStack {
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
                            .padding(.leading)
                        
                    }
                    
                }
                Text(places.des)
                                    
            .lineSpacing(8.0)
            .opacity(0.6)
            .padding()
                                    
                                    
            //Spacer()
          //  Spacer()
                }
                }
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(places.landMarks ?? [.init(name: "", image: "")], id: \.id) { landMark in
                        NavigationLink {
                            LandMarkView(landMark: landMark)
                        } label: {
                            Image(landMark.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 170,height: 120)
                                .cornerRadius(12)
                        }
                    }.listRowBackground(Color.clear)
//                        .foregroundColor(.clear)

                }
            }.padding()
                        }
                    }
                }
            }
        
    }
}


struct Diriyah_Previews: PreviewProvider {
    static var previews: some View {
        PlacesView(places:
                
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
                        location: "C")  ]))
        
    }
}


