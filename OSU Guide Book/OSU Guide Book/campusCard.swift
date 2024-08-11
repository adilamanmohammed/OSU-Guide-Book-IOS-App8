//
//  campusCard.swift
//  OSU Guide Book
//
//  Created by Adil Aman Mohammed on 8/5/24.
//

import SwiftUI

struct campusCard: View {
    
    var campus : Campus
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .background(content : {
                    Image(campus.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                })
                .foregroundColor(.clear)
                .cornerRadius(15)
            
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
                .cornerRadius(15)
            
            
            VStack(alignment: .leading){
                
                Text(campus.name)
                    .font(.largeTitle)
                    .bold()
                
                
                Spacer()
                
                Text(campus.summary)
                    .multilineTextAlignment(.leading)
                
                
                
            }
            .padding()
            .foregroundColor(.white)
            
            
        }
        .frame(height: 400)
        
    }
}

#Preview {
    campusCard(campus: Campus(name: "Stillwater", summary: "Theta Pond at Oklahoma State University in Stillwater is a serene and picturesque spot on campus", imageName: "osuStillwater", placename: [place]()) )
}
