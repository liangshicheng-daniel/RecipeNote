//
//  RecipeItemView.swift
//  RecipeNote
//
//  Created by Shicheng Liang on 5/6/25.
//

import SwiftUI

struct RecipeItemView: View {
    var image = "image_1"
    var body: some View {
        VStack(spacing: 10) {
            // Image
            Image(image).resizable().scaledToFit()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 30))
            
            // Recipe Summary
            HStack {
                // Details
                VStack(alignment: .leading) {
                    Text("韭菜炒香干").font(.system(size: 32)).fontWeight(.bold)
                    
                    HStack {
                        Text("材料").fontWeight(.semibold)
                        Text("五花肉 香干 韭菜")
                    }
                    HStack {
                        Text("调味品：").fontWeight(.semibold)
                        Text("生抽 老抽 蚝油 盐 糖 味精 胡椒粉 淀粉")
                    }
                }
                Spacer()
                
                // Rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.6")
                }
                
            }.font(.footnote)
        }
    }
}

#Preview {
    RecipeItemView()
}
