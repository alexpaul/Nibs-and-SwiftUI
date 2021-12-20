//
//  SomeNibView.swift
//  Nibs-and-SwiftUI
//
//  Created by Alex Paul on 12/20/21.
//

import SwiftUI

// Exposing a Nib file to SwiftUI
struct SomeNibView: UIViewRepresentable {
    @Binding var backgroundColor: UIColor

    func makeUIView(context: Context) -> some UIView {
        CustomNib()
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let customNib = uiView as? CustomNib else { return }

        customNib.containerView.backgroundColor = backgroundColor
    }
}
