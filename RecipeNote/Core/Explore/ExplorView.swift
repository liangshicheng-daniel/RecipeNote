//
//  ExploreView.swift
//  RecipeNote
//
//  Created by Shicheng Liang on 5/6/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { recipe in
                        RecipeItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                }.padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
