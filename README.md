# Nibs and SwiftUI

Exposing a nib/xib UIKit view to SwiftUI.

```swift
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
```
