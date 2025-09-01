//
//  ThreadsTextFieldModifier.swift
//  Threads
//
//  Created by Pushpank Kumar on 02/09/25.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
