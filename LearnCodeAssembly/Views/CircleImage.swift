//
//  CircleImage.swift
//  LearnCodeAssembly
//
//  Created by Igoryok on 26.07.2021.
//  Copyright © 2021 Wings' Might. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("SightThumbnail")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle()
                        .stroke(Color.white, lineWidth: 4.0))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
