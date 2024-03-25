//
//  PDFViewController.swift
//  VisionOSOrnamentExample
//
//  Created by Vishnu Dutt on 14/03/24.
//

import UIKit
import SwiftUI

class PDFViewController: UIViewController {
    private var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        label = UILabel(frame: CGRect(x: view.bounds.midX, y:view.bounds.midY, width: 200, height: 30))
        label.text = "PDFViewController"
        self.view.addSubview(label)
        setOrnaments()
    }

    func showPopup(sourceView: UIView) {
        let popupViewController = PopupViewController()
        popupViewController.modalPresentationStyle = .popover
        if let popoverController = popupViewController.popoverPresentationController {
            let pointInView = view.convert(sourceView.bounds, from: sourceView.coordinateSpace)
            popoverController.sourceView = view
            popoverController.sourceRect = pointInView
            popoverController.permittedArrowDirections = .up
        }
        self.present(popupViewController, animated: true)
    }

    func setOrnaments() {
        self.ornaments = [
            UIHostingOrnament(sceneAnchor: .trailing) { ToolbarOrnament() },
            UIHostingOrnament(sceneAnchor: .top) { NavigationBarOrnament(toolbarAction: showPopup) }
        ]
    }
}

