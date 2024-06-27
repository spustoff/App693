//
//  LoadingView.swift
//  App693
//
//  Created by Вячеслав on 6/27/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("logo_big")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 255, height: 255)
        }
    }
}

#Preview {
    LoadingView()
}
