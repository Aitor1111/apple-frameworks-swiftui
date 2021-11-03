//
//  FrameworkHorizontalTitleView.swift
//  Apple Frameworks
//
//  Created by Aitor Trujillo on 3/11/21.
//

import SwiftUI

struct FrameworkHorizontalTitleView: View {
    
    var framework: Framework
    
    var body: some View {
        HStack (spacing: 2){
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            
            Text(framework.name)
                .bold()
                .scaledToFit()
                .font(.title2)
                .foregroundColor(Color(.label))
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

struct FrameworkHorizontalTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkHorizontalTitleView(framework: MockData.sampleFramework)
    }
}
