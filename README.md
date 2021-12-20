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

The embedded view with the `UISwitch` below was created as a nib file. The project demos a `UIHostingController` and the nib fully integrated with functionality in SwiftUI.


https://user-images.githubusercontent.com/1819208/146846178-beb5ed30-38c5-4229-bbc2-a012f0792114.mp4


