//
//  CircleImage.swift
//  PracticeAssignment4
//
//  Created by Akshay Singh on 29/05/25.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(style: StrokeStyle(lineWidth: 2)))
            .shadow(radius: 10)
            
    }
}

#Preview {
    CircleImage(image: ModelData().landmarks[0].image)
}
