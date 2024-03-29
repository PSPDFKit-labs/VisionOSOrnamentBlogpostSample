//
//  AnchorButton.swift
//  VisionOSOrnamentExample
//
//  Created by Vishnu Dutt on 14/03/24.
//

import SwiftUI

@MainActor
struct AnchorButton<Content: View>: View {
    typealias Action = (UIView) -> Void
    private let callback: Action
    private let content: Content

    @State private var anchorView = UIView()

    init(action: @escaping Action, @ViewBuilder content: () -> Content) {
        self.callback = action
        self.content = content()
    }

    var body: some View {
        ZStack {
            InternalAnchorView(uiView: anchorView)
            Button {
                self.callback(anchorView)
            } label: {
                content
            }
        }
    }

    private struct InternalAnchorView: UIViewRepresentable {
        typealias UIViewType = UIView
        let uiView: UIView

        func makeUIView(context: Self.Context) -> Self.UIViewType {
            uiView
        }

        func updateUIView(_ uiView: Self.UIViewType, context: Self.Context) { }
    }
}

