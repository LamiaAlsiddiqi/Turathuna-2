//
//  Map.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 21/05/1444 AH.
//

import SwiftUI

struct Map: View {
    var body: some View {
        Link("Open in Safari", destination: URL(string: "https://google.com")!)
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        Cities()
    }
}
