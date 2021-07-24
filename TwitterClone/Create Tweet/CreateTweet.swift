//
//  CreateTweet.swift
//  TwitterClone
//
//  Created by Rafael.Ahmedov on 7/12/21.
//

import SwiftUI

struct CreateTweet: View {
    
    
    @Binding var show : Bool
    @State var txt = ""
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button(action: {
                    self.show.toggle()
                }){
                    Text("Cancel")
                }
                
                Spacer()
                
                Button(action: {
                    postTweet(msg: self.txt)
                    self.show.toggle()
                }){
                    Text("Tweet").padding()
                }.background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            MultiLineTextField(txt:$txt)
        }.padding()
        
    }
}


