//
//  FeedView.swift
//  Threads
//
//  Created by Pushpank Kumar on 02/09/25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: true) {
                LazyVStack {
                    ForEach(0...10, id: \.self) { thread in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("referesh called")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    // TODO: Add later
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(Color.black)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
