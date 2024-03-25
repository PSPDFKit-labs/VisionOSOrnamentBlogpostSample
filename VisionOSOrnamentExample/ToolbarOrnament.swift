//
//  ToolbarOrnament.swift
//  VisionOSOrnamentExample
//
//  Created by Vishnu Dutt on 14/03/24.
//

import SwiftUI

struct ToolbarOrnament: View {
    var body: some View {
        VStack {
            Button("Text", systemImage: "doc.text") { }
            Button("Draw", systemImage: "pencil.line") { }
            Button("Eraser", systemImage: "eraser") { }
        }
        .padding(20)
        .glassBackgroundEffect()
    }
}

#Preview {
    ToolbarOrnament()
}
