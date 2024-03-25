//
//  VisionOSOrnamentExampleApp.swift
//  VisionOSOrnamentExample
//
//  Created by Vishnu Dutt on 12/03/24.
//

import SwiftUI

@main
struct VisionOSOrnamentExampleApp: App {
    var body: some Scene {
        WindowGroup {
//            PDFViewWithDefaultToolbarAndTabView()
//            PDFViewCustomOrnament()
            PDFViewUIKitWraper()
        }
    }
}

struct PDFViewUIKitWraper: UIViewControllerRepresentable {
    typealias UIViewControllerType = PDFViewController

    func makeUIViewController(context: Context) -> PDFViewController {
        return PDFViewController()
    }

    func updateUIViewController(_ uiViewController: PDFViewController, context: Context) {
    }
}
