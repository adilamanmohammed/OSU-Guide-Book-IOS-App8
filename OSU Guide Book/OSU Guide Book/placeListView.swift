//
//  placeView.swift
//  OSU Guide Book
//
//  Created by Adil Aman Mohammed on 7/14/24.
//

import SwiftUI

struct placeListView: View {
    
    var campus : Campus
    
    var body: some View {
        
        
        ScrollView(showsIndicators: false) {
            
            VStack{
                ForEach(campus.placename){nplace in
                    NavigationLink {
                        placeDetailView(place : nplace)
                    } label: {
                        placeRowView(place: nplace)
                            .padding(.bottom, 50)
                    }
                    .buttonStyle(.plain)

                    
                }
            }
            
        }
        .padding(.horizontal)
        
        
    }
}

#Preview {
    placeListView(campus: Campus(name: "OSU Stillwater", summary: "Oklahoma State University in Stillwater is a leading public research university known for its vibrant campus life, diverse academic programs, and strong community spirit. It offers a wide range of undergraduate and graduate degrees, fostering innovation, leadership, and academic excellence.", imageName: "osuStillwater", placename: [place(name: "Theta Pound", shortDescription: "Theta Pond at Oklahoma State University in Stillwater is a serene and picturesque spot on campus", longDescription: "Theta Pond at Oklahoma State University in Stillwater is a serene and picturesque spot on campus, known for its tranquil atmosphere and scenic beauty. The pond is surrounded by lush greenery, flowering plants, and shaded walking paths, making it a favorite spot for students, faculty, and visitors to relax and unwind. It features a charming bridge and benches where people can sit and enjoy the view. Theta Pond is also home to various wildlife, including ducks and fish, adding to its natural appeal. The area is often used for picnics, quiet study sessions, and photography, especially during the fall and spring when the surrounding foliage is at its most vibrant. This beloved campus landmark also hosts events and gatherings, contributing to the sense of community at OSU. Its serene environment makes it an ideal place for reflection and leisure amidst the bustling university life.", imageName: "osuThetaPound", latLogDetails: "36.1247, -97.0685")]))
}
