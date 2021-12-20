//
//  SwiftUIView.swift
//  Nibs-and-SwiftUI
//
//  Created by Alex Paul on 12/20/21.
//

import SwiftUI

struct SwiftUIView: View {
    @State var backgroundColor = UIColor.green

    var body: some View {
        SomeNibView(backgroundColor: $backgroundColor)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
