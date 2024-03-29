//
//  PDFViewCustomOrnament.swift
//  VisionOSOrnamentExample
//
//  Created by Vishnu Dutt on 12/03/24.
//

import SwiftUI

struct ViewWithCustomOrnament: View {
    @State private var showingPopover = false
    @State var searchList: [String] = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]

    var body: some View {
        Text("PDFView")
            .ornament(
                visibility: .visible,
                attachmentAnchor: .scene(.trailing),
                contentAlignment: .top
            ) {
               ToolbarOrnament()
            }
            .ornament(
                visibility: .visible,
                attachmentAnchor: .scene(.top),
                contentAlignment: .trailing
            ) {
                HStack {
                    Button("Share", systemImage: "square.and.arrow.up") { 
                        //Show a UIKit view controller on the base UIKit view controller
                    }
                    SearchBarOrnamentItem()
                }
                .labelStyle(.iconOnly)
                .padding(20)
                .glassBackgroundEffect()
            }
    }
}

struct SearchBarOrnamentItem: View {
    @State private var showingPopover = false
    @State var searchList: [String] = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]

    var body: some View {
        Button("Search", systemImage: "magnifyingglass") {
            showingPopover = true
        }
        Spacer(minLength: 10)
            .popover(isPresented: self.$showingPopover,
                     attachmentAnchor: .point(.bottom),
                     arrowEdge: .bottom,
                     content: {
                ForEach(searchList, id: \.self) { item in
                    Text(item)
                        .padding()
                }
                .padding()
                .presentationCompactAdaptation(.none)
            })
    }
}
