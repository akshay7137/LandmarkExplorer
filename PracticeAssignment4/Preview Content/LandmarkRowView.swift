//
//  LandmarkRowView.swift
//  PracticeAssignment4
//
//  Created by Akshay Singh on 30/05/25.
//

import SwiftUI

struct LandmarkRowView: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 70,height: 70)
                .clipShape(Circle())
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName:"star.fill")
                    .foregroundColor(.yellow)
                    .imageScale(.medium)
            }
                
        }
    }
}

#Preview {
    LandmarkRowView(landmark: ModelData().landmarks[0])
}
