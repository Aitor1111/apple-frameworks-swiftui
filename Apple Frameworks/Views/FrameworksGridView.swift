//
//  FrameworksGridView.swift
//  Apple Frameworks
//
//  Created by Aitor Trujillo on 3/11/21.
//

import SwiftUI

struct FrameworksGridView: View {
    
    var viewModel: AppleFrameworksViewModel
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: viewModel.columns, content: {
                ForEach(MockData.frameworks) { framework in
                    FrameworkVerticalTitleView(framework: framework)
                        .onTapGesture {
                            viewModel.selectedFramework = framework
                        }
                    
                }
                
            })
        }
        .navigationTitle(" Frameworks")
        .sheet(isPresented: $isShowingDetailView) {
            FrameworkDetailView(
                framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                isShowingDetailView: $isShowingDetailView,
                isFullscreen: false
            )
        }
    }
}

struct FrameworksGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksGridView(viewModel: AppleFrameworksViewModel(), isShowingDetailView: .constant(false))
    }
}
