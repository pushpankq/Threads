//
//  ThreadCell.swift
//  Threads
//
//  Created by Pushpank Kumar on 02/09/25.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        
        VStack {
            HStack(alignment: .top, spacing: 12) {
                Image("lewis-hamilton")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("lewis-hamilton")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10 m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))
                        
                        Button {
                            // TODO:
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }

                    }
                    
                    Text("formula 1 champion")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 14) {
                        Button {
                            // TODO:
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            // TODO:
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            // TODO:
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            // TODO:
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundStyle(Color.black)
                    .padding(.vertical, 8)
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}
