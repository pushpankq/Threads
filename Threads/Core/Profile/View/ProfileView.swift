//
//  ProfileView.swift
//  Threads
//
//  Created by Pushpank Kumar on 02/09/25.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    private var filterBarWidth: CGFloat {
        let count = ProfileThreadFilter.allCases.count
        return UIScreen.main.bounds.width / CGFloat(count) - 20
    }
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        // fullname and username
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Pushpank Kumar")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("pushpankq")
                                .font(.subheadline)
                        }
                        
                        Text("Hey I am an iOS Engineer.")
                            .font(.footnote)
                        
                        
                        Text("2 followers")
                            .font(.caption)
                            .foregroundStyle(Color.gray)
                        
                    }
                    
                    Spacer()
                    
                    CircularProfileImageView()
                }
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(Color.black)
                        .cornerRadius(8)

                }
                
                // user content list
                
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundStyle(Color.black)
                                        .frame(width: filterBarWidth, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundStyle(Color.clear)
                                        .frame(width: filterBarWidth, height: 1)
                                }
                            }
                            
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    
                    LazyVStack {
                        ForEach(0...10, id: \.self) { thread in
                            ThreadCell()
                        }
                    }
                }
                .padding(.vertical, 8)                
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
