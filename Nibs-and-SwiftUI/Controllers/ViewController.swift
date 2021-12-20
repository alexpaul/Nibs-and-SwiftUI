//
//  ViewController.swift
//  Nibs-and-SwiftUI
//
//  Created by Alex Paul on 12/20/21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let hostController = UIHostingController(rootView: SwiftUIView())

        present(hostController, animated: true)
    }

}

