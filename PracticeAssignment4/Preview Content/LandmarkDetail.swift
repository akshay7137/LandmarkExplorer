//
//  ContentView.swift
//  PracticeAssignment4
//
//  Created by Akshay Singh on 29/05/25.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark : Landmark
    @Environment(ModelData.self) var modelData
    var landmarkIndex : Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView{
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                    .edgesIgnoringSafeArea(.top)
                CircleImage(image: landmark.image)
                    .offset(y:-180)
                    .padding(.bottom,-130)
                VStack(alignment: .leading) {
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                        Button {
                            modelData.landmarks[landmarkIndex].isFavorite.toggle()
                        } label: {
                            Image(systemName:modelData.landmarks[landmarkIndex].isFavorite ? "star.fill" : "star")
                                .foregroundColor(.yellow)
                        }

                    }
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    Divider()
                    Text("About \(landmark.name)")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.bottom,10)
                    Text(landmark.description)
                        .font(.caption)
                    
                }
                .padding()
                Spacer()
            }
            .navigationBarTitle(landmark.name, displayMode: .inline)
        }
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
