//
//  CircleImageView.swift
//  Landmark
//
//  Created by user2 on 26/10/23.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("smile")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray,lineWidth: 3)
            }.shadow(radius: 10)
            }
        
}

#Preview {
    CircleImageView()
}
