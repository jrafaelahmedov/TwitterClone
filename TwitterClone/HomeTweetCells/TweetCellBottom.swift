//
//  LikeView.swift
//  TwitterClone
//
//  Created by Rafael.Ahmedov on 7/12/21.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI

struct TweetCellBottom : View {
    var body: some View
    {
        HStack(spacing: 40) {
            Button(action: {}){
                Image("Comments").resizable().frame(width: 20, height: 20)
            }.foregroundColor(.gray)
            
            Button(action: {}){
                Image("Retweet").resizable().frame(width: 20, height: 20)
            }.foregroundColor(.gray)
            
            Button(action: {}){
                Image("love").resizable().frame(width: 20, height: 17)
            }.foregroundColor(.gray)
            
            Button(action: {}){
                Image("upload").resizable().frame(width: 20, height: 20)
            }.foregroundColor(.gray)
        }
    }
}


