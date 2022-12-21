//
//  SplachScreenView.swift
//  Turathuna
//
//  Created by Lamia AlSiddiqi on 13/05/1444 AH.
//

import SwiftUI

struct SplachScreenView: View {
    @State private var isActive = false
    @State private var size = 0.1
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            Cities()
        } else {
            VStack {
                ZStack {
                    VStack {
                        Image("Background")
                            .resizable()
                            .ignoresSafeArea()
                    
                }
                            Image("Turathuna")
                                .resizable()
                                .ignoresSafeArea()
                                .scaleEffect(size)
                                .opacity(opacity)
                                .onAppear {
                                    withAnimation(.easeIn(duration: 2)) { self.size = 1.0
                                        self.opacity = 1.0
                                    }
                                }
                    }
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true}
                }
            }
        }

    }
}

struct SplachScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplachScreenView()
    }
}
