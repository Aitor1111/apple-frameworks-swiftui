//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Aitor Trujillo on 1/11/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    var isFullscreen: Bool
    
    var body: some View {
        VStack {
            if !isFullscreen {
                HStack {
                    Spacer()
                    Button {
                        isShowingDetailView = false
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                }.padding()
                Spacer()
            }
            
            FrameworkVerticalTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                Text("Learn more")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 240, height: 50)
                    .foregroundColor(Color(.label))
                    .background(Color.red)
                    .cornerRadius(10)
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            if let url = URL(string: framework.urlString) {
                SafariView(url: url)
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false), isFullscreen: false)
            .preferredColorScheme(.dark)
    }
}
