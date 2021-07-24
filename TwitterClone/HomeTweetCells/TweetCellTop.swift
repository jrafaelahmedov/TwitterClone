//
//  TweetCell.swift
//  TwitterClone
//
//  Created by Rafael.Ahmedov on 7/12/21.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI

struct TweetCellTop : View {
    var name = ""
    var id = ""
    var pic = ""
    var image = ""
    var msg = ""
     
    var body: some View {
        
        
        
        HStack(alignment:.top) {
            
            VStack {
                AnimatedImage(url: URL(string: image)!).resizable().frame(width: 50, height: 50).clipShape(Circle())
            }
            
            VStack(alignment: .leading){
                Text(name).fontWeight(.heavy)
                Text(id)
                Text(msg).padding(.top,8)
                
                if pic != "" {
                    AnimatedImage(url: URL(string: pic)!).resizable().frame(height: 300).cornerRadius(20).padding()
                }
                
            }
        }.padding()
        
    }
}
