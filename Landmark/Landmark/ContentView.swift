//
//  ContentView.swift
//  Landmark
//
//  Created by user2 on 26/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height: 300)
            CircleImageView()
                .offset(y: -110)
                .padding(.bottom, -120)
            
            VStack(alignment: .leading) {
                
                
                Text("SRMIST")
                    .font(.title)
                    .foregroundColor(Color.orange)
                
                HStack{ Text("kattankulathur")
                    Spacer()
                    Text("Chennai")
                }
                Divider()
                Text("SRMIST")
                    .font(.title)
                    .foregroundColor(Color.orange)
                
                HStack{ Text("kattankulathur")
                    Spacer()
                    Text("Chennai")
                }
                
            }
            
            .padding()
            Spacer()
        }
    }
    
}

#Preview {
    ContentView()
}
