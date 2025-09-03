//
//  ExploreView.swift
//  Threads
//
//  Created by Pushpank Kumar on 02/09/25.
//

import SwiftUI

struct ExploreView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...10, id: \.self) { user in
                        VStack {
                            UserCell()
                            Divider()
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
