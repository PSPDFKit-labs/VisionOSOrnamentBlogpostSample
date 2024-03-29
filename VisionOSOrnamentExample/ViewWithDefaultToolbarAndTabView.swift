//
//  PDFViewWithDefaultToolbarAndTabView.swift
//  VisionOSOrnamentExample
//
//  Created by Vishnu Dutt on 14/03/24.
//

import SwiftUI

struct ViewWithDefaultToolbarAndTabView: View {
    var body: some View {
        TabView {
            Text("Toolbar")
                .tabItem {
                    Button("Share", systemImage: "square.and.arrow.up") { }
                }
                .toolbar {
                    ToolbarItem(placement: .bottomOrnament) {
                        Button("Text", systemImage: "doc.text") { }
                    }
                    ToolbarItem(placement: .bottomOrnament) {
                        Button("Draw", systemImage: "pencil.line") { }
                    }
                    ToolbarItem(placement: .bottomOrnament) {
                        Button("Eraser", systemImage: "eraser") { }
                    }
                }
            Text("Search")
                .tabItem {
                    Button("Search", systemImage: "magnifyingglass") { }
                }
        }
    }
}

#Preview {
    ViewWithDefaultToolbarAndTabView()
}
