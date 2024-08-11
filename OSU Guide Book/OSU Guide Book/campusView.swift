//
//  ContentView.swift
//  OSU Guide Book
//
//  Created by Adil Aman Mohammed on 7/5/24.
//

import SwiftUI

struct campusView: View {
    
    @State var campusList = [Campus]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView(showsIndicators: false)
            {
                
                
                VStack {
                    
                    ForEach(campusList){campuses in
                        
                        NavigationLink {
                            placeListView(campus: campuses)
                        } label: {
                            campusCard(campus: campuses)
                        }

                        
                    }
                    
                }
                
                
            }
            .padding(.horizontal)
            
        }
        .ignoresSafeArea()
        .onAppear(){
            campusList = dataService.getFileData()
        }
        
            
    }
}

#Preview {
    campusView()
}
