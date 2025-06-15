//
//  LandmarkList.swift
//  PracticeAssignment4
//
//  Created by Akshay Singh on 30/05/25.
//

import SwiftUI

struct LandmarkList: View {
    
//    @EnvironmentObject var userData : UserData
    @State private var showFavoriteOnly = false
    @Environment(ModelData.self) var modelData
    var filterLandmark : [Landmark] {
        modelData.landmarks.filter({ landmark in
            (!showFavoriteOnly || landmark.isFavorite)
            
        })
    }
    
    var body: some View {
        NavigationView {
            
            List() {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Show Favorite Only")
                }
                ForEach(filterLandmark) { landmark in
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                            LandmarkRowView(landmark: landmark)
                        }
                }
            }
            .animation(.default, value: filterLandmark)
            .navigationTitle("Landmarks")
            
        }
    }
}

#Preview {
    LandmarkList()
}
