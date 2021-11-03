//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Aitor Trujillo on 3/11/21.
//
import SwiftUI

class AppleFrameworksViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
}
