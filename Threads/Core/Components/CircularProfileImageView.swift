//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by Pushpank Kumar on 04/09/25.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("lewis-hamilton")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
