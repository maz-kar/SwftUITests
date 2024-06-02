//
//  XCUITestsView.swift
//  XCUITests
//
//  Created by Maziar Layeghkar on 02.06.24.
//

import SwiftUI

class XCUITestsViewModel: ObservableObject {
    
    let placeholderText: String = "Add your name..."
    @Published var textFieldText: String = ""
}

struct XCUITestsView: View {
    
    @StateObject private var vm = XCUITestsViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.black]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack {
                TextField(vm.placeholderText, text: $vm.textFieldText)
                    .font(.headline)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

#Preview {
    XCUITestsView()
}
