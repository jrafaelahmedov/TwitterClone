//
//  TwetterCellMiddle.swift
//  TwitterClone
//
//  Created by Rafael.Ahmedov on 7/12/21.
//


import SwiftUI
import Firebase
import SDWebImageSwiftUI

struct TweetCellMiddle: View {
    
    var pic  = ""
    
    var body: some View {
        
        AnimatedImage(url: URL(string: pic)!).resizable().frame(height: 300).cornerRadius(20).padding()

    }


}
