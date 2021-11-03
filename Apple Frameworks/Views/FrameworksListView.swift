//
//  FrameworksListView.swift
//  Apple Frameworks
//
//  Created by Aitor Trujillo on 3/11/21.
//

import SwiftUI

struct FrameworksListView: View {
    
    var viewModel: AppleFrameworksViewModel
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        List {
            ForEach(MockData.frameworks) { framework in
                NavigationLink {
                    FrameworkDetailView(
                        framework: framework,
                        isShowingDetailView: $isShowingDetailView,
                        isFullscreen: true
                    )
                } label: {
                    FrameworkHorizontalTitleView(framework: framework)
                }
            }
        }
        .navigationTitle(" Frameworks")
    }
}

struct FrameworksListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksListView(viewModel: AppleFrameworksViewModel(), isShowingDetailView: .constant(false))
    }
}
