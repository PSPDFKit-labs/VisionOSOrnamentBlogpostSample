//
//  NavigationBarOrnament.swift
//  VisionOSOrnamentExample
//
//  Created by Vishnu Dutt on 14/03/24.
//

import SwiftUI

struct NavigationBarOrnament: View {
   let toolbarAction: ((UIView) -> Void)?

    var body: some View {
        HStack {
            AnchorButton { view in
                toolbarAction?(view)
            } content: {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Text("Share")
                }
            }
            SearchBarOrnamentItem()
        }
        .labelStyle(.iconOnly)
        .padding(20)
        .glassBackgroundEffect()
    }
}

#Preview {
    NavigationBarOrnament(toolbarAction: {_ in })
}
