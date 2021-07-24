//
//  MultiLineTextField.swift
//  TwitterClone
//
//  Created by Rafael.Ahmedov on 7/12/21.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI

struct MultiLineTextField: UIViewRepresentable {
    
    @Binding var txt : String
    
    func makeCoordinator() -> Coordinator {
        return MultiLineTextField.Coordinator(parent1: self)
    }

    func makeUIView(context: UIViewRepresentableContext<MultiLineTextField>) -> UITextView {
        
        let text = UITextView()
        text.isEditable = true
        text.isUserInteractionEnabled = true
        text.text = "Type Something"
        text.textColor = .gray
        text.font = .systemFont(ofSize: 20)
        text.delegate = context.coordinator
        return text
    }
    
    func updateUIView(_ uiView : UITextView, context: UIViewRepresentableContext<MultiLineTextField>) {
    
    }
}

class Coordinator: NSObject , UITextViewDelegate {
    
    var parent : MultiLineTextField
    
    init(parent1 : MultiLineTextField) {
        parent = parent1
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
        textView.textColor = .black
    }
    
    func textViewDidChange(_ textView: UITextView) {
        self.parent.txt = textView.text
    }
}
