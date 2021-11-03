//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Aitor Trujillo on 1/11/21.
//

import SwiftUI

struct AppleFrameworksView: View {
    
    @StateObject var viewModel = AppleFrameworksViewModel()
    
    @State var isGrid = false
    
    var body: some View {
        HStack {
            NavigationView {
                
                if isGrid {
                    FrameworksGridView(viewModel: viewModel, isShowingDetailView: $viewModel.isShowingDetailView)
                        .navigationBarItems(trailing:Button(action: {
                            isGrid = !isGrid
                        }) {
                            Text("Show as List")
                        })
                    
                } else {
                    FrameworksListView(viewModel: viewModel, isShowingDetailView: $viewModel.isShowingDetailView)
                        .navigationBarItems(trailing:Button(action: {
                            isGrid = !isGrid
                        }) {
                            Text("Show as Grid")
                        })
                }
            }
            
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        AppleFrameworksView()
            .preferredColorScheme(.dark)
    }
}


