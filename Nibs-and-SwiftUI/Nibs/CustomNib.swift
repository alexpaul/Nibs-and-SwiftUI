//
//  CustomNib.swift
//  Nibs-and-SwiftUI
//
//  Created by Alex Paul on 12/20/21.
//

import UIKit

class CustomNib: UIView {

    @IBOutlet var containerView: UIView!

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        commonInit()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        commonInit()
    }

    convenience init() {
        self.init(frame: UIScreen.main.bounds)

        commonInit()
    }

    private func commonInit() {
        Bundle.main.loadNibNamed("CustomNib", owner: self, options: nil)

        containerViewConstraints()
    }

    private func containerViewConstraints() {
        addSubview(containerView)

        containerView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 300),
            containerView.heightAnchor.constraint(equalTo: containerView.widthAnchor)
        ])
    }

    @IBAction func toggleChanged(_ sender: UISwitch) {
        backgroundColor = sender.isOn ? .white : .black
    }

}
