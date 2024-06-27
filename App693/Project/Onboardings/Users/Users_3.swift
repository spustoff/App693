//
//  Users_3.swift
//  App693
//
//  Created by Вячеслав on 6/27/24.
//

import SwiftUI

struct Users_3: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("users_3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                VStack(alignment: .center, spacing: 10, content: {
                    
                    Text(String("Don’t miss \nanything").uppercased())
                        .foregroundColor(Color("primary"))
                        .font(.system(size: 28, weight: .bold))
                        .multilineTextAlignment(.center)
                    
                    Text(String("Don’t miss the most userful information"))
                        .foregroundColor(Color("primary"))
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                
                Spacer()
                
                HStack {
                    
                    Button(action: {
                        
                        status = true
                        
                    }, label: {
                        
                        Text("SKIP")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                            .frame(width: 100)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.black.opacity(0.4)))
                    })
                    
                    Button(action: {
                        
                        status = true
                        
                    }, label: {
                        
                        Text("ENABLE NOTIFICATIONS")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                    })
                }
                .padding()
            }
            .ignoresSafeArea(.all, edges: .top)
        }
    }
}

#Preview {
    Users_3()
}
