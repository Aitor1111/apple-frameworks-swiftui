//
//  SwiftUIView.swift
//  Apple Frameworks
//
//  Created by Aitor Trujillo on 3/11/21.
//

import SwiftUI

struct FrameworkVerticalTitleView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack (spacing: 2){
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .bold()
                .scaledToFit()
                .font(.title2)
                .foregroundColor(Color(.label))
                .minimumScaleFactor(0.6)
        }.padding()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkVerticalTitleView(framework: MockData.sampleFramework)
    }
}
