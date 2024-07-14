//
//  ContentView.swift
//  OSU Guide Book
//
//  Created by Adil Aman Mohammed on 7/5/24.
//

import SwiftUI

struct compusView: View {
    
    var body: some View {
        
        VStack {
            Image("osuStillwater").resizable()
                .aspectRatio(contentMode: .fill)
        }
        .padding()
    }
}

#Preview {
    compusView()
}
