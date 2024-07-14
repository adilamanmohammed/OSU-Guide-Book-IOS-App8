//
//  placeRowView.swift
//  OSU Guide Book
//
//  Created by Adil Aman Mohammed on 7/14/24.
//

import SwiftUI

struct placeRowView: View {
    
    var place : place
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            Image(place.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 120)
                .cornerRadius(15)
            Text(place.name)
                .font(.largeTitle)
            
            Text(place.shortDescription)
                .multilineTextAlignment(.leading)
            
            
        }
        
    }
}

#Preview {
    placeRowView(place : place(name: "Theta Pound", shortDescription: "Theta Pond at Oklahoma State University in Stillwater is a serene and picturesque spot on campus", longDescription: "Theta Pond at Oklahoma State University in Stillwater is a serene and picturesque spot on campus, known for its tranquil atmosphere and scenic beauty. The pond is surrounded by lush greenery, flowering plants, and shaded walking paths, making it a favorite spot for students, faculty, and visitors to relax and unwind. It features a charming bridge and benches where people can sit and enjoy the view. Theta Pond is also home to various wildlife, including ducks and fish, adding to its natural appeal. The area is often used for picnics, quiet study sessions, and photography, especially during the fall and spring when the surrounding foliage is at its most vibrant. This beloved campus landmark also hosts events and gatherings, contributing to the sense of community at OSU. Its serene environment makes it an ideal place for reflection and leisure amidst the bustling university life.", imageName: "osuThetaPound", latLogDetails: "36.1247, -97.0685"))
}
