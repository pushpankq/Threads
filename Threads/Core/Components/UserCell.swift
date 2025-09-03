//
//  UserCell.swift
//  Threads
//
//  Created by Pushpank Kumar on 04/09/25.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack {
                Text("lewis-hamilton")
                    .fontWeight(.semibold)
                
                Text("Lewis Hamilton")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }.padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
