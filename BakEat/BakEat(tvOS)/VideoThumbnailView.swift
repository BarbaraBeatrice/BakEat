//
//  VideoThumbnailView.swift
//  BakEat(tvOS)
//
//  Created by Barbara Beatrice on 01/04/22.
//

import SwiftUI

struct VideoThumbnailView: View {
    
    
    var image: String
    var recipeName: String
    var recipeInfo: String
    @Environment(\.isFocused) var isFocused: Bool
    
    var body: some View {
        
        
        ZStack (alignment: .top) {
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 480, height: 350)
                .background(.teal)
                .foregroundColor(.clear)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            ZStack {
                Image (image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 480, height: 250)
                    .clipped()
                
                Button {
//                    todo
                } label: {
                    Image (systemName: "play.fill")
                        .renderingMode(.original)
                        .foregroundColor(Color(.systemTeal))
                        .font(.system(size: 60))
                        .shadow(radius: 5)
                        .padding()
                }
                .buttonStyle(.plain)
            }
            
            
            HStack {
                VStack (alignment: .leading, spacing: 4){
                    Text(recipeName)
                        .font(.subheadline)
                        .bold()
                    
                    
                    Text (recipeInfo)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.black)
                }
                .padding()
                
                Spacer()
            }
            .padding()
            .offset(x: 0, y: 230)
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .frame(width: 480, height: 350)
    }
}

struct VideoThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoThumbnailView(image: "brownies", recipeName: "Brownies", recipeInfo: "EASY - 30 MIN")
    }
}
